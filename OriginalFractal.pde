public void setup()
{
	size(400, 400);
}

public void circle(int x, int y, int len)
{
	ellipse(x, y, len, len);
}

public void fractals(int x, int y, int len)
{
	if(len <= 10)
		circle(x, y, len);
	else
	{
		//noFill();
		fractals(x, y, len/2);
		//fractals(x - len/2, y, len/2);
		//fractals(x + len/2, y, len/2);
		//fractals(x, y + len/2, len/2);
		//fractals(x, y - len/2, len/2);
	}
}

public void draw(){
	fractals(200, 200, 400);
}