#include <ESP8266WiFi.h>
int n;
void setup()
{
Serial.begin(9600);
pinMode(16,OUTPUT);
pinMode(5,OUTPUT);
}
void loop()
{
n=analogRead(A0);
Serial.println(n);
if(n>500)
{
digitalWrite(16,LOW);
digitalWrite(5,HIGH);
Serial.println("Alcohol Detected");
}
if(n<500)
{
digitalWrite(16,HIGH);
digitalWrite(5,LOW);
Serial.println("No Alcohol is detected");
}
}
