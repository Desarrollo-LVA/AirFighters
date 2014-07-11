class NaveGuia
{
  int posicionX,posicionY;
  int ancho, alto;
  PImage imagen;
  void mueve()
  {
    posicionX += mouseX - pmouseX;
    posicionY += mouseY - pmouseY;
  }
  
  NaveGuia()
  {
    this(50,50,null);
  }
  
  NaveGuia(int an,int al,PImage img)
  {
    ancho = an;
    alto = al;
    imagen = img;
  }
  
  void traza()
  {
    if(imagen == null)
      rect(posicionX,posicionY,ancho,alto);
  }
  
  void valida()
  {
    if(pmouseX >= posicionX && pmouseX <= posicionX + ancho)
      if(pmouseY >= posicionY && pmouseY <= posicionY + alto)
        mueve();
  }
}
