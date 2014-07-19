NaveGuia naveGuia;
PImage nave,bala;
static ArrayList<Bala> balas;


void setup()
{
  //size(800,600);
  background(0,255,100);
  
  nave = loadImage("nave.png");
  bala = loadImage("bala.png");
  naveGuia = new NaveGuia(nave.width,nave.height,nave,10);
  balas = new ArrayList();
}

void draw()
{
  background(0,255,100);
  naveGuia.traza();
  pintarBalas();
}

void mouseDragged()
{
  naveGuia.valida();
}

void pintarBalas()
{
  ArrayList temp = new ArrayList<Bala>();
  for(int i = 0; i < balas.size(); i ++)
  {
    Bala b = balas.get(i);
    b.pintar();
    if(b.origenX < width)
      temp.add(b);
  }  
  balas = temp;
}


  
