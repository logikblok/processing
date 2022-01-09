Car myCar1;
Car myCar2; 
Car myCar3; 
Car myCar4; 

void setup() {
  size(200,200);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,100,2);
  myCar2 = new Car(color(0,0,255),50,10,1);
  myCar3 = new Car(color(25,25,255),20,150,2);
  myCar4 = new Car(color(0,25,255),0,25,3);
}

void draw() {
  background(255);
  noStroke();
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  myCar3.drive();
  myCar3.display();
  myCar4.drive();
  myCar4.display();
}

class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    noStroke();
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,30,10);
    rect(xpos,ypos-10,10,10);
    ellipse(xpos-9, ypos+10, 6, 6);
    ellipse(xpos+9, ypos+10, 6, 6);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
