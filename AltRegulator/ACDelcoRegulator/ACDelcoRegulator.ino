#define TEST_INTERVAL 1000
#define TEST_INTERVAL_MAX 15000
#define EXCITEMENT_DELAY 1000

unsigned long NowTime = 0;
unsigned long LastTime = 0;
unsigned long IdleCount = 0;
unsigned long TestInterval = TEST_INTERVAL; // Starting interval will self-adjust
int Excite = 0;
float IN = 0.0;
float OUT = 0.0;
float EFFICENT = 0.0;
bool Show = false;

void Excitement(int Value) {
  analogWrite(10,Value);
  analogWrite(11,Value);
}

void setup() {
  // put your setup code here, to run once:
  pinMode(A0,INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly
  IN = Excite/15.0;
  OUT = analogRead(A0)/30.0;
  EFFICENT = OUT/IN;
  
  // Timed Events
  NowTime = millis();
  if ( NowTime > (LastTime + TestInterval) ) {
    LastTime = millis();
    Show = true;
  }

  if ( Excite > 100 ) {
    if ( Show ) Serial.print("99-");
    if ( EFFICENT > 0.85 ) Excite = Excite + 10;
    if ( EFFICENT < 0.75 ) Excite = Excite - 10;
  } else if ( Excite > 61 ) {
    if ( Show ) Serial.print("60-");
    if ( EFFICENT > 0.75 ) Excite = Excite + 10;
    if ( EFFICENT < 0.65 ) Excite = Excite - 10;
  } else if ( Excite > 41 ) {
    if ( Show ) Serial.print("40-");
    if ( EFFICENT > 0.60 ) Excite = Excite + 10;
    if ( EFFICENT < 0.50 ) Excite = Excite - 10;
  } else {
    if ( Show ) Serial.print("00-");
    if ( EFFICENT > 0.02 ) { Excite = Excite + 10; }
    else { Excite = Excite - 10; }
  }

  if ( Show ) {
    Serial.print("IN->");Serial.print(IN);Serial.print("\t");
    Serial.print("OUT->");Serial.print(OUT);Serial.print("\t");
    Serial.print("EFF->");Serial.println(EFFICENT);
    Show = false;
  }
  // 26 will induce some at high winds
  if ( Excite < 28 ) Excite = 28;
  if ( Excite > 255 ) Excite = 255;
  Excitement(Excite);
  // Test for activity ( PS @ 12.5Vdc )
  // 50 = 3.1Vdc @ 0.62A
  // 60 = 3.75Vdc @ 0.87A
  // 100 = 5.5Vdc
  // 200 = 7.42Vdc @ 2.19A

}



