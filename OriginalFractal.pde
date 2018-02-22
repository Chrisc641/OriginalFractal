void setup()
{
	size(800, 800);
	background(0);
	noStroke();
	fill(206, 155, 25);
}

void draw()
{
	fractal(400, 400, 15, 250, 300);
}

void fractal(float x, float y, float w, float l, float d)
{
	if(d < 50)
	{
		ellipse(x, y, d, d);
	}
	else
	{
		rect(x, y - w / 2, l, w);
		rect(x - l, y - w / 2, l, w);
		rect(x - w / 2, y, w, l);
		rect(x - w / 2, y - l, w, l);
		ellipse(x, y, d, d);
		ellipse(x, y - w, d / 1.8, d / 1.8);
		fractal(x + l, y, w, l / 1.8, d / 1.8);
		fractal(x - l, y, w, l / 1.8, d / 1.8);
		fractal(x, y - l, l / 1.8, w, d / 1.8);
		fractal(x, y + l, l / 1.8, w, d / 1.8);
	}	
}