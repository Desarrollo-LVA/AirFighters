class Enemigo
{

  int x,y,ancho,alto,velocidad;
  PImage img;
  public Enemigo(PImage imagen)
  {
    img = imagen;
    x = width;
    y = (int)random(height);
    ancho = imagen.width;
    alto = imagen.height;
    velocidad = 2;
  }
  
  void pintar()
  {
    image(img,x,y);
    x -= velocidad;
   
  }
  
}
