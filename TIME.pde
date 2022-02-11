// CLOCK AND CALENDAR
void CLOCK_AND_CALENDAR()
{
  int HOUR = hour();
  int MINUTE = minute();
  int SECOND = second();
  float MILLIS = millis();
  print("|  HOUR:"+HOUR,"MINUTE:"+MINUTE,"SECOND:"+SECOND,"MILLIS:"+MILLIS);
  
  int DAY = day();
  int MONTH = month();
  int YEAR = year();
  print("|  DAY:"+DAY,"MONTH:"+MONTH,"YEAR:"+YEAR+"|  ");
  
  //return A832 6DFB; WOW ! What is it ?! 
}
