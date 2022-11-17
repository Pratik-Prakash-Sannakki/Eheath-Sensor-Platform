///* Developed By Pradyot Hota @ ITC Infotech
///Please, do not edit or try to edit or modify the code without Permission *///
///Copyright @PradyotHota @ ITC Infotech ///

#ifndef SENSORAPP_H
#define SENSORAPP_H
#include "WebSockConn.h"

#include "eHealth.h"
#include "json.h"

#include <fstream>
#include <vector>
#include <string>
#include <string.h>
#include <cstdlib>
#include <iostream>
#include <sstream>
#include <cstddef>


using namespace std;

class SensorApp{

    private:

    ///Tcp_Client* UserOne;  //Object Created of type Tcp_Client
    websocket_endpoint endpoint;
    ///A container to store deliminated Values read from Text file.
     websocket_endpoint UserOne;
    ///Member variable to capture host system
    string hostname;
    ///Vector To Store Sensor Read Data
    std::vector<string> ReadData;
    ///Returns an integer when a new connection is added
    int newconnectionid;


    public:
        string buffer;
        ifstream object;       //ifs is a stream object to get the data from data stored in the vector

        SensorApp();  //Constructor Call
    ///Sets Up Socket Communication
        int SetUpConnection();
    ///Method Collects Sensor Data
        bool captureSensorData();
    ///Method Pushes Data to UI
        bool SendDataToUI();
    ///Method Converts Data as JSON Object
        Json::Value ConvertToJson();

        vector<string> split(string, char);

    ///SPO2 Uses this functionality

};
///Initializes the circuitary
void Setup();
///Method Initializes SPO2 Sensor
void ReadPulsioximeter();

void CaptureAirflowData();

#endif // SENSORAPP_H_INCLUDED
