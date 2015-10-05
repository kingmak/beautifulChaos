float[] x = new float[500];
float[] y = new float[500];

float[] speedX = new float[500];
float[] speedY = new float[500];

void setup()
{
  size(1920,1000);
  smooth();
  background(175);  
  
  for(int i = 0; i < x.length; i++)
  {
    x[i] = random(10, 750);
    y[i] = random(10, 750);
  }

  for(int i = 0; i < speedX.length; i++)
  {
    speedX[i] = i - 2.0;
    speedY[i] = 5;
  }
}

void draw()
{
  noStroke();
  fill(255,10);
  rect(0, 0, width, height);
  
  for (int i = 0; i < speedX.length; i++)
  {
    x[i] += speedX[i];
    y[i] += speedY[1];
  }
  
  for (int i = 0; i < x.length; i++)
  {
    if ((x[i] > width - 10) || (x[i] < 5))
    {
      speedX[i] = -speedX[i];
    }
    
    if ((y[i] > height - 10) || (y[i] < 5))
    {
      speedY[i] = -speedY[i];
    }
  } 
  
  for (int i = 0; i < x.length; i++)
  {
    stroke(0);
    fill(255, 0, 0);
    ellipse(x[i], y[i], 8, 8);
  }
}
