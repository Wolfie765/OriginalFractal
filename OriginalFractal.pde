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
	{
		noFill();
		circle(x, y, len/2);
	}
	else
	{
		//noFill();
		circle(x, y, len/2);
		circle(x - len/2, y, len/2);
		circle(x + len/2, y, len/2);
		circle(x, y + len/2, len/2);
		circle(x, y - len/2, len/2);
		fractals(x, y, len/2);
		//fractals(x - len/2, y, len/2);
	}
}

public void draw()
{
	//noFill();
	//cfrac(100, 100, 200);
	fractals(200, 200, 800);
}
/*
public void cfrac(int x, int y, int len)
{
	if(len <= 10)
	{
		cfrac(x, y, len);
	}
	else
	{
		//y = x*x + 1;
		cfrac(x, y, len/2);

	}
}
*/