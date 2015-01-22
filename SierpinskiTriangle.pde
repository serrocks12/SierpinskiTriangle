public void setup()
{
  size(400,400);
  background(0);

}
public void draw()
{
  fill(random(0,255));
  sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len > 20)
  {
    sierpinski(x,y,len/2);
    sierpinski(x + len/2,y,len/2);
    sierpinski(x + len/4,y-len/2,len/2);
  }
  else
  {
    
    triangle(x+len/2, y-len,x, y, x+len, y);
  }
}