Particle [] what;
Particle [] wow;
Particle joe = new Particle();

int huh = 500;
void setup()
{
  size(500,500);
  //noStroke();
  what = new Particle[huh];
  for(int i = 0; i< 100; i++)
    what[i]= new OddballParticle();
    for(int i = 100; i< 150; i++)
    what[i]= new MoreParticle();
  for(int i = 150; i< what.length; i++)
    what[i]= new Particle();
  wow = new Particle[500];
  for(int i = 0; i< 100; i++)
      wow[i]= new OddballParticle();
  for(int i = 100; i< 150; i++)
      wow[i]= new MoreParticle();
  for(int i = 150; i< wow.length; i++)
      wow[i]= new Particle();
}
void draw()
{
  background(0);
  joe.show();
  joe.move();

  for(int i = 0; i< what.length; i++){
  what[i].move();
  what[i].show();
  //wow[i].move();
  //wow[i].show();
}
}
void mousePressed()
  {
    noStroke();
    //huh = huh + 100;
    //redraw();
  }
 
class Particle
{
  int myc, mysize;
  double myX, myY, myspeed, myangle;
  //speed int rings
  Particle(){
    //myc = color((int)(Math.random()*256),
    //            (int)(Math.random()*256),
    //            (int)(Math.random()*256));
    myc = color(#09C5D8);
    myangle = ((double)(Math.random()*2)+1)*Math.PI;
    myspeed = (double)(Math.random()*10)+1;
    myX = 250;
    myY = 250;
    mysize = 10;
  }//part end
  void show(){
    fill(myc);
    rect((float)myX,(float)myY,mysize,mysize);
  }//show end
  void move(){
    myX = myX + (myspeed*(Math.cos(myangle)));
    myY = myY + (myspeed*(Math.sin(myangle)));
  }//move end
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myc = color(#FC0303);
    myangle = ((double)(Math.random()*2)+1)*Math.PI;
    myspeed = (double)(Math.random()*10)+2;
    myX = 250;
    myY = 250;
    mysize = 30;
}
}
class MoreParticle extends Particle{
  MoreParticle(){
    myc = color(#C7F70A);
    myangle = ((double)(Math.random()*2)+1)*Math.PI;
    myspeed = (double)(Math.random()*10)+4;
    myX = 250;
    myY = 250;
    mysize = 15;
  }
  void move(){
    myX = myX + ((int)(Math.random()*7)-4);
    myY = myY + ((int)(Math.random()*7)-3);
  }
}
