/****************************************************
* Initialization For ST7036i *
*****************************************************/
#define Slave 0x78
#define Comsend 0x00
#define Datasend 0x40
unsigned char SDA, SCL;
void init_LCD()
{
I2C_Start();
I2C_out(Slave);//Slave=0x78
I2C_out(Comsend);//Comsend = 0x00
I2C_out(0x38);
delay(10);
I2C_out(0x39);
delay(10);
I2C_out(0x14);
I2C_out(0x78);
I2C_out(0x5E);
I2C_out(0x6D);
I2C_out(0x0C);
I2C_out(0x01);
I2C_out(0x06);
delay(10);
I2C_Stop();
}
/*****************************************************/
/****************************************************
* Output command or data via I2C *
*****************************************************/
void I2C_out(unsigned char j) //I2C Output
{
int n;
unsigned char d;
d=j;
for(n=0;n<8;n++){
if((d&0x80)==0x80)
SDA=1;
else
SDA=0;
d=(d<<1);
SCL = 0;
SCL = 1;
SCL = 0;
}
SCL = 1;
while(SDA==1){
SCL=0;
SCL=1;
}
SCL=0;
}
/***********************************************/
/****************************************************
* I2C Start *
*****************************************************/
void I2C_Start(void)
{
SCL=1;
SDA=1;
SDA=0;
SCL=0;
}
/*****************************************************/
/****************************************************
* I2C Stop *
*****************************************************/
void I2C_Stop(void)
{
SDA=0;
SCL=0;
SCL=1;
SDA=1;
}
/*****************************************************/
/****************************************************
* Send string of ASCII data to LCD *
*****************************************************/
void Show(unsigned char *text)
{
int n,d;
d=0x00;
I2C_Start();
I2C_out(Slave); //Slave=0x78
I2C_out(Datasend);//Datasend=0x40
for(n=0;n<20;n++){
I2C_out(*text);
++text;
}
I2C_Stop();
}
/*****************************************************/
/*****************************************************/
/*****************************************************/

void display_ls(unsigned char* SDA_addr, unsigned char* SCL_addr) {
    SDA_addr = &SDA;
    SCL_addr = &SCL;
    init_LCD();
    Show("Hello World");
}

