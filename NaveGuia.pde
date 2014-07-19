class NaveGuia
{
  int posicionX,posicionY;
  int ancho, alto;
  
  int contador, frecuencia;
  PImage imagen;
  
  
  void mueve()
  {
    posicionX += mouseX - pmouseX;
    posicionY += mouseY - pmouseY;
  }
  
  NaveGuia()
  {
    this(50,50,null,3);
  }
  
  NaveGuia(int an,int al,PImage img,int frec)
  {
    ancho = an;
    alto = al;
    imagen = img;
    frecuencia = frec;
    contador = 0; 
  }
  
  void traza()
  {
    if(imagen == null)
      rect(posicionX,posicionY,ancho,alto);
    else
      image(imagen,posicionX,posicionY);
    
    contador++;
    if(contador >= frecuencia)
    {
      dispara();
      contador -= frecuencia;
    }
  }
  
  void valida()
  {
    if(pmouseX >= posicionX && pmouseX <= posicionX + ancho)
      if(pmouseY >= posicionY && pmouseY <= posicionY + alto)
        mueve();
  }
  
  void dispara()
  {
    balas.add(new Bala(bala.width / 2, bala, posicionX + ancho, posicionY + alto / 2));
  }
}
