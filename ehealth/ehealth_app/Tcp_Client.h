#ifndef TCP_CLIENT_H
#define TCP_CLIENT_H

//#define SERVER_PORT htons(63513)

#include<iostream>    //cout
#include<stdio.h> //printf
#include<string.h>    //strlen
#include<string>  //string
#include<sys/socket.h>    //socket
#include<arpa/inet.h> //inet_addr
#include<netdb.h> //hostent
#include<fstream>  //used to get stream objects
#include<vector>  //Container
#include<cstdlib>  //standard C library

using namespace std;


class Tcp_Client
{
    private:

    int sock;
    std::string address;
    int port;
    struct sockaddr_in server;

    public:

    Tcp_Client();  // Constructor Declared

    bool conn(string address, int port);
    bool send_data(string);
    string receive(int size);

};// Class Declaration ends here


#endif // TCP_CLIENT_H_INCLUDED
