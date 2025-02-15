void setup(){
 size(2880, 1800); 
 frameRate(60);
 background(255, 160, 255);
 for(int i = 0; i < 25; i++){
 double chance = Math.random();
 if(chance < 0.3) aProposal((float)(Math.random()*100)+50, (float)(Math.random()*2880), (float)(Math.random()*300));
 else if(chance < 0.5) aProposal((float)(Math.random()*100)+50, (float)(Math.random()*720), (float)(Math.random()*1200+300));
 else if(chance < 0.7) aProposal((float)(Math.random()*100)+50, (float)(Math.random()*720+2160), (float)(Math.random()*1200+300));
 else aProposal((float)(Math.random()*100)+50, (float)(Math.random()*2880), (float)(Math.random()*300+1500));
 }
 stroke(255);
 fill(255, 220, 255);
 rect(840, 1550, 1200, 250);
 ellipse(1440, 900, 1500, 1500);
 aProposal(700, 1440, 900);
 textSize(100);
 textAlign(CENTER);
 text("pls go out with me >_<", 1440, 1700);
}

void draw(){
}

public void aProposal(float rad, float x, float y){
  stroke(250, 50, 50);
  strokeWeight(rad/25);
  if(rad < 5){
    fill(255, 50, 50);
    ellipse(x, y, 5, 5);
  }
  else{
    for(float i = 0; i < 8; i++){
      int randomer = (int)(Math.random()*100);
      fill(200, randomer, randomer);
      translate(x, y);
      rotate(PI/4);
      ellipse(0, rad/2, rad, rad);
      translate(-x, -y);
    }
    aProposal(rad/2, x, y);
  }
}
