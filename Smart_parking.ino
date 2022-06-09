#include <ThingSpeak.h>
#include <ESP8266WiFi.h>

//----------- Enter you Wi-Fi Details---------//
char ssid[] = "Ravi"; //SSID
char pass[] = "ravikumar"; // Password
//-------------------------------------------//
WiFiClient  client;
unsigned long myChannelField = 1759356; // Channel ID
const int ChannelField1 = 1; // Which channel to write data
const int ChannelField2 = 2;
const int ChannelField3 = 3;
const char * myWriteAPIKey = "VMZWVSJVF20G0Z0H"; // Your write API Key

const int trigPin1 = 12;
const int echoPin1 = 14;
const int trigPin2 = 4;
const int echoPin2 = 0;
const int trigPin3 = 5;
const int echoPin3 = 16;

long duration, distance, RightSensor,BackSensor,FrontSensor,LeftSensor;

void setup()
{
Serial.begin(9600);
pinMode(trigPin1, OUTPUT);
pinMode(echoPin1, INPUT);
pinMode(trigPin2, OUTPUT);
pinMode(echoPin2, INPUT);
pinMode(trigPin3, OUTPUT);
pinMode(echoPin3, INPUT);
WiFi.mode(WIFI_STA);
  if (WiFi.status() != WL_CONNECTED)
  {
    Serial.print("Attempting to connect to SSID: ");
    Serial.println(ssid);
    while (WiFi.status() != WL_CONNECTED)
    {
      WiFi.begin(ssid, pass);
      Serial.print(".");
      delay(5000);
    }
    Serial.println("\nConnected.");
  } 
ThingSpeak.begin(client);
}

void loop() {

delay(1000);
SonarSensor(trigPin1, echoPin1);
RightSensor = distance;
SonarSensor(trigPin2, echoPin2);
LeftSensor = distance;
SonarSensor(trigPin3, echoPin3);
FrontSensor = distance;

Serial.print(FrontSensor);
Serial.print(" - ");
Serial.print(LeftSensor);
Serial.print(" - ");
Serial.println(RightSensor);
ThingSpeak.setField(1, FrontSensor);
ThingSpeak.setField(2, LeftSensor);
ThingSpeak.setField(3, RightSensor);
ThingSpeak.writeFields(myChannelField, myWriteAPIKey);
//int response=ThingSpeak.writeField(myChannelField,{LeftSensor,FrontSensor,RightSensor} ,'WriteKey', myWriteAPIKey);

}

void SonarSensor(int trigPin,int echoPin)
{
digitalWrite(trigPin, LOW);
delayMicroseconds(2);
digitalWrite(trigPin, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin, LOW);
duration = pulseIn(echoPin, HIGH);
distance = (duration/2) / 29.1;

}
