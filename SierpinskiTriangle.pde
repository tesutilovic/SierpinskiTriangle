int z = 30;

public void setup()
{
	size(500, 500);
	background(0);
}
public void draw()
{
	sierpinski(0, 0, z);
}
public void mouseClicked(){
	z = z*2;
	redraw();
}

public void sierpinski(int x, int y, int len) 
{
	if (len <=20){
		triangle(x, y, x+len, y, x+len/2, y+len);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y+len/2, len/2);
	}

}