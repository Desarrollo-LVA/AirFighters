class Bala
{
  float vel;
  float origenX, origenY;
  int ancho, alto;
  PImage imagen;
  
  Bala(int x,int y)
  {
    this(10, x, y);
  }
  
  Bala(float velocidad, int origenX, int origenY)
  {
    vel = velocidad;
    this.origenX = origenX;
    this.origenY = origenY;
    ancho = alto = 30;
    imagen = null;    
  }
  
  void pintar()
  {
    origenX += vel;
    if(imagen == null)
      ellipse((int)origenX, (int)origenY, ancho, alto);
  }
}
