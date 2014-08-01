NaveGuia naveGuia;
PImage nave,bala,estrellaAzul,estrellaAmarilla;
static ArrayList<Bala> balas;

static ArrayList<Estrella> estrellas;
int conEstrellas, ciclosEstrellas = 5, velEstrellas = 5, grosorEstrella = 20;;
void setup()
{
  size(800,600);
  background(0,255,100);
  
  nave = loadImage("nave.png");
  bala = loadImage("bala.png");
  estrellaAzul = loadImage("azul.png");
  estrellaAmarilla = loadImage("amarillo.png");
  naveGuia = new NaveGuia(nave.width,nave.height,nave,10);
  balas = new ArrayList();
  estrellas = new ArrayList(10);
  conEstrellas = 0;
}

void draw()
{
  fondo();
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

void fondo()
{
  background(0);
  ArrayList<Estrella> lista = new ArrayList();
  for(int i = 0; i < estrellas.size(); i ++)
  {
    Estrella temp = (Estrella)estrellas.get(i);
    //stroke(255);
    //strokeWeight(temp.tam);
    //point(temp.x,temp.y);
    image(temp.imagen,temp.x,temp.y);
    temp.x -= velEstrellas;
    if(temp.x + temp.tam / 2 >= 0)
      lista.add(temp);
  }
  estrellas = lista;
  conEstrellas ++;

  if(conEstrellas > ciclosEstrellas)
  {
    estrellas.add(new Estrella());
    conEstrellas = 0;
  }
  
}

class Estrella
{   
  int x,y,tam;
  PImage imagen;
  
  Estrella(int b,int c,boolean azul)
  {
    x = width + c / 2;
    y = b;
    tam = c;
    imagen = azul?estrellaAzul:estrellaAmarilla;
  }
  
  Estrella()
  {
    this((int)random(0,height),(int)random(0,grosorEstrella),(random(1) > 0.5));
  }
}
