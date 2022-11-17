///* Developed By Pratik P S @ ITC Infotech
///Please, do not edit or modify the code without Permission *///
///Copyright @Pratik @ ITC Infotech ///

#include "SensorApp.h"
#include <fstream>
#include <vector>
#include <string>
#include <string.h>
#include <cstdlib>
#include <iostream>
#include <unistd.h>
#include <cstddef>

//using boost::property_tree::ptree;
using namespace std;

int cont = 0;

SensorApp::SensorApp()
{
   // SensorApp::ReadData = NULL;  //Vector NULL initially
    //hostname = "http://10.6.139.163:5080"; //Initially  ///Address of ur cloud app running
    hostname = "http://i3lbfsiiot.azurewebsites.net/";

    newconnectionid = -1;
    buffer = "";
}
int SensorApp::SetUpConnection()
{
    newconnectionid = UserOne.connect(hostname);        ///Doing a connection
   // newconnectionid = endpoint.connect(hostname);
    cout << "\n Connection Id is:" << newconnectionid << endl;

    return newconnectionid;
}

void Setup()
{
    delay(1000);
    Serial.begin(115200);

    eHealth.initPositionSensor();
}

void ReadPulsioximeter()
{
  cont ++;

  if (cont == 50)  //Read 50 Values as per driver
  {
  //Get only of one 20 measures to reduce the latency
        eHealth.readPulsioximeter();
        cont = 0;
  }
}

bool SensorApp::captureSensorData()
{
    //std::vector<string> sensorBucket;
    string temperatureData = "";
    string AirflowData = "";
    string BpmValue = "";
    string SPO2Value = "";
    string ConductanceStr = "";
    string ResistanceStr = "";
    string CondVolStr = "";
    string glucoStrVal = "";
    string positionStr = "";
    string ecgValue = "";
    string emgValue = "";

    ///Fuction call to initialize circuit to a particular Baud Rate
    Setup();

    while(1)
    {
        ReadData.clear();
        ///Calls The Driver method to get Body Temperature
        float temperature = eHealth.getTemperature();
         ///Celcius Converted to Farenheit
        float tempInFarenheit = (temperature * 9.0)/5.0 + 32 ;

        cout << "============================ Hang On!!! Ur Measurement Just Got Started =============================" << endl;

        printf("\nTemperature : %f \n", tempInFarenheit);

        if(tempInFarenheit < 95 )
            cout << "You are Suffering from Hypothermia \n" << endl;

        else if(tempInFarenheit >= 97.7 && tempInFarenheit <= 99.5)
            cout << "You Body Temperature is Normal \n" << endl;

        else if(tempInFarenheit >= 99.5 && tempInFarenheit <= 100.9)
            cout << "You Have Fever Or Hypothermia \n" << endl;

        else
            cout << "You have HyperPyrexia \n" << endl;

        ///if range between 97.7-99.5 F - Normal
        ///if > 99.5-100.9 -- Fever or Hypothermia
        ///if > 104-106.7 --> Hyperpyrexia

        delay(4000);
        temperatureData = to_string(tempInFarenheit);
        //sensorBucket.push_back(temperatureData);
        ReadData.push_back(temperatureData);        ///1st Value inside Vector

        printf("========================== Temperature Captured ================================ \n\n");

        ///Thread to calculate Airflow Data Separately

        int air = eHealth.getAirFlow();
        printf("AirFlow Value is: %d \n", air);
        delay(50);
        //eHealth.airFlowWave(air);
        AirflowData = to_string(air);
        ReadData.push_back(AirflowData);        ///2nd Value inside Vector

        printf("\n\n======================= Airflow Captured ===================================== \n");


        ///SPO2 Methods with intializing the circuit

        eHealth.initPulsioximeter();
        ///Attach The interruptions for using pulsiometer
        attachInterrupt(6, ReadPulsioximeter, RISING);

        int Bpm = eHealth.getBPM();
        printf("PRBM Value is %d \n", Bpm);

        BpmValue = to_string(Bpm);
        ReadData.push_back(BpmValue);        ///3rd Value inside Vector

        int SPO2 = eHealth.getOxygenSaturation();
        printf("SPO2 Value is %d \n", SPO2);
        delay(500);

        SPO2Value = to_string(SPO2);
        ReadData.push_back(SPO2Value);      ///4th Value inside Vector

        printf("\n\n===================== SPO2 Captured ========================== \n");


        float conductance = (eHealth.getSkinConductance())/10;   ///Value comes as MicroOhms, so we need to convert divide it by 10 to get in milliOhms
        float resistance = eHealth.getSkinResistance();
        float conductanceVol = eHealth.getSkinConductanceVoltage();

        printf("Conductivity : %f\n", conductance);
        printf("Resistance : %f\n", resistance);
        printf("Conductance Voltage : %f\n", conductanceVol);

        delay(1000);

        ConductanceStr = to_string(conductance);
        ReadData.push_back(ConductanceStr);       ///5th Value inside Vector
        ResistanceStr = to_string(resistance);
        ReadData.push_back(ResistanceStr);        ///6th Value inside Vector

        printf("\n\n========================= GSR Captured ========================= \n");

        eHealth.readGlucometer();  ///Reads Glucometer Value or Initilizes circuit
        delay(100);

        uint8_t numberOfData = eHealth.getGlucometerLength();

        printf("Number of measures : %d \n",numberOfData);
        delay(100);


      for (int i = 0; i< numberOfData; i++)
      {
        // The protocol sends data in this order
        printf("\n=============================================================== \n");

        printf("Measure number %d\n",i+1);

        printf("Date -> %d",eHealth.glucoseDataVector[i].day);
        printf(" of ");
        printf("%s",eHealth.numberToMonth(eHealth.glucoseDataVector[i].month));
        printf(" of ");
        printf("%d",2000 + eHealth.glucoseDataVector[i].year);
        printf(" at ");

        if (eHealth.glucoseDataVector[i].hour < 10) {
          printf("0"); // Only for best representation.
        }

        printf("%d",eHealth.glucoseDataVector[i].hour);
        printf(":");

        if (eHealth.glucoseDataVector[i].minutes < 10) {
          printf("0");// Only for best representation.
        }
        printf("%d",eHealth.glucoseDataVector[i].minutes);

        if (eHealth.glucoseDataVector[i].meridian == 0xBB)
          printf(" pm");
        else if (eHealth.glucoseDataVector[i].meridian == 0xAA)
          printf(" am");

        printf("\n Glucose value : %d mg/dL",eHealth.glucoseDataVector[i].glucose);

        glucoStrVal = to_string(eHealth.glucoseDataVector[i].glucose);

        delay(2000);

      } ///End of For Loop

      ReadData.push_back(glucoStrVal);   ///7th Value inside Vector

      printf("\n\n========================== GlucoseValue Captured ======================== \n");

      uint8_t position = eHealth.getBodyPosition();

      if(position == 1)
      {
          printf("The Patient Body Position Is: %d\n And U Are at %s ", position, " Supine Position ");
      }
      else if(position == 2)
      {
          printf("The Patient Body Position Is: %d\n And U Are at %s ", position, " Left lateral Decubitus Position ");
      }
      else if(position == 3)
      {
          printf("The Patient Body Position Is: %d\n And U Are at %s ", position, " Right lateral Decubitus Position ");
      }
      else if(position == 4)
      {
          printf("The Patient Body Position Is: %d\n And U Are at %s ", position, " Prone Position ");
      }
      else if(position == 5)
      {
           printf("The Patient Body Position Is: %d\n And U Are at %s ", position, " Stand or Sit Position ");
      }

      else

        std::cout << " \n\n Please, Adjust Your Sitting... This is Not the Proper way...." << std::endl;

      positionStr = to_string(position);

      printf("========================================================================= \n\n");

      ReadData.push_back(positionStr);       ///8th Value inside Vector

      delay(3000);

      printf("========== Patient Body Position Captured... Look at Dashboard For Body Position changes ========== \n\n");

      float ECG = eHealth.getECG();

      printf(" The Patient ECG value is %f V\n ", ECG);

      delay(1000);

      ecgValue = to_string(ECG);

      ReadData.push_back(ecgValue);          ///9th Value inside Vector

      printf("============================= Patient ECG Captured ======================= \n");

      ///Set Baud Rate only for EMG Value
      Serial.begin(115200);

      int EMG = eHealth.getEMG();

      printf(" The Patient EMG value is %d\n ", EMG);

      delay(100);

      emgValue = to_string(EMG);

      ReadData.push_back(emgValue);          ///10th Value inside Vector

      printf("============================= Patient EMG Captured ======================= \n \n");

    ///Testing the Bucket
       //for(std::vector<string>::iterator it = sensorBucket.begin(); it != sensorBucket.end(); ++it)
       //cout << " Bucket Value Is " << *it << endl;
    ///Send Vector
      SendDataToUI();

    }
    return true;
}

//ReadDataJson::Value SensorApp::ConvertToJson(std::vector<string> datastream)
Json::Value SensorApp::ConvertToJson()
{
    // creating a JSON Object and filling it with values
    Json::Value value(Json::objectValue);

    for(unsigned int i=0; i < (ReadData.size()); i++)
    {
        //cout<< "Count of the array is "<<datastream.size()<< " Round: " <<i<<endl;

        if (i==0)
        {
            value["Bodytemperature"] = ReadData[0];
        }
        else if (i==1)
        {
            value["AirFlowValue"] = ReadData[1];  // value["AirflowValue
        }
        else if(i==2)
        {
            value["Pulse"] = ReadData[2];
        }
        else if(i==3)
        {
            value["SPO2"] = ReadData[3];
        }
        else if(i==4)
        {
            value["Conductivity"] = ReadData[4];
        }
        else if(i==5)
        {
            value["Resistance"] = ReadData[5];
        }
        else if(i==6)
        {
            value["GlucoseLevel"] = ReadData[6];
        }
        else if(i==7)
        {
            value["BodyPosition"] = ReadData[7];
        }
        else if(i==8)
        {
            value["ECGValue"] = ReadData[8];
        }
        else if(i==9)
        {
            value["EMGValue"] = ReadData[9];
        }
        else
        {
            cout << "======================== Error in Sensor Array object =========================== \n" <<endl;
            break;
        }
    }

  return value;
}

//bool SensorApp::SendDataToUI(std::vector<string> RecvData)
bool SensorApp::SendDataToUI()
{
    Json::FastWriter fastWriter;
    buffer = '\0'; // clear the contents of buffer to null before pushing sensor data
   // for(unsigned int i=0; i<= RecvData.size(); i++)

        //out << "The Received Data Is" << RecvData[i] << "Size is" << RecvData.size() << endl;   ///Temperature Value goes First, Correct Value

        //buffer = fastWriter.write(ConvertToJson(RecvData));
    buffer = fastWriter.write(ConvertToJson());

    UserOne.send(newconnectionid, buffer);  //Sending Data

    ReadData.clear();

    delay(2000);

    //cout << "The Buffer Value Is: " << buffer << endl;

    return true;
}

int main()
{
    /// Locally created Pointer to SensorApp Class Type, Calls default Constructor

    ///Instead of using a wild pointer, use a smart pointer(New Changes)

    SensorApp *app = new SensorApp();

    //unique_ptr<SensorApp> app;

    int connectionid = app->SetUpConnection();

    if (connectionid < 0)

    cout << " Not able to set up connection - Abort" << endl;

    bool result = app->captureSensorData();

    if(result)
    {
        cout << "Captured Data from Sensors" << endl;
    }
    else

    cout << "Error!! in capturing Data from Sensors" << app->captureSensorData() << endl;

    delete app;
}

