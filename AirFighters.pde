NaveGuia naveGuia;

void setup()
{
  background(0,255,100);
  naveGuia = new NaveGuia();
}

void draw()
{
  background(0,255,100);
  naveGuia.traza();
}

void mouseDragged()
{
  naveGuia.valida();
}


  
