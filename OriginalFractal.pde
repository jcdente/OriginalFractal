public void setup()
{
	
	size(800, 800);
	frameRate(15);	
}
public void draw()
{
	background(0);
	sierpinski(0, 0, 800);

}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	noStroke();
	fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
	if(len >= 20)
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y+len/2, len/2);
		

	}
	else
	{

		int a =  (int)(Math.random()*5);
		rect(x, y, len*a/2, len*a/2);
		//triangle(x, y, x+len, y, x + len/2, (float)(y - Math.sqrt(len*len*2/3)));
		
	}
}
