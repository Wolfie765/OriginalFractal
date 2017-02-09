public void setup()
{
	size(1000, 1000);
	fractals(500, 500, 2000);
}

public void circle(int x, int y, int len)
{
	ellipse(x, y, len, len);
}

public void fractals(int x, int y, int len)
{
	if(len <= 10)
	{
		//noFill();
		circle(x, y, len/2);
	}
	else
	{
		
		//Center
		circle(x, y, len/2);
		//circle(x, y, len);
		
		//x plane	
		circle(x - len/2, y, len/4);
		circle(x + len/2, y, len/4);
		
		//y plane
		circle(x, y + len/2, len/4);
		circle(x, y - len/2, len/4);

		//Diagonals
			circle(x - len/2, y - len/2, len/4);
			circle(x - len/2, y + len/2, len/4);
			circle(x + len/2, y + len/2, len/4);
			circle(x + len/2, y - len/2, len/4);

		
		
		fractals(x, y, len/2);
		fractals(x - len/2, y, len/4);
		fractals(x + len/2, y, len/4);
		fractals(x, y - len/2, len/4);
		fractals(x, y + len/2, len/4);

		fractals(x + len/2, y + len/2, len/4);
		fractals(x - len/2, y - len/2, len/4);
		fractals(x - len/2, y + len/2, len/4);
		fractals(x + len/2, y - len/2, len/4);
	}
}

public void draw()
{
	//noFill();
	//cfrac(100, 100, 200);
	//fractals(500, 500, 2000);
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