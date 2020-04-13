class ecologyAgent {

  PVector loc;
  int[]point;
  int[]pointdir;


  ecologyAgent(PVector _loc, int[] asp) {

    loc=_loc;
    point = asp;
  }


  void vis() {

    
    control();
    population();
    construction();
    movement();
    organization();
    proximity();
    perception();
  }



  void perception() {
    if (pointdir[0] > 0) {
      //object
      noStroke();
      fill(255);
      ellipse(loc.x, loc.y, 4, 4);
    } else if (pointdir[0] < 0) {
      // subject
      stroke(255);
      strokeWeight(.3);
      noFill();
      ellipse(loc.x, loc.y, 4, 4);
    }
  }

  void control() {
    if (pointdir[1] >0) {
    } else if (pointdir[1] < 0) {
    }
  }

  void population() {
    if (pointdir[2] > 0) {
    } else if (pointdir[2] < 0) {
    }
  }

  void construction() {
    if (pointdir[4] > 0) {
    } else if (pointdir[4] < 0) {
    }
  }

  void movement() {
    pushMatrix();
    translate(loc.x,loc.y);
    if (pointdir[5] > 0) {
      //float noiseScale = .01;
      //noiseSeed(int(random(0, 20)));
      //loc.x+=map(noise(loc.x*noiseScale,loc.y*noiseScale),0,1,2,-2);
      //loc.y+=map(noise(loc.y*noiseScale,loc.y*noiseScale),0,1,2,-2);
      //loc.x+=(random(-2, 2));
      //loc.y+=(random(-2, 2));
      
     // PVector dir = new PVector(random(-1,1),random(-1,1));
     // dir.normalize();
     // dir.mult(2);
      
      //for(int i = 0; i < 6; i++){
      //  stroke(255-(i*(255/6)));
      //  noFill();
      //  strokeWeight(.5);
      // ellipse(loc.x+(dir.x*i),loc.y+(dir.y*i),4,4);
      //}
      
      
      
      
      rotate(random(0,TWO_PI));
      line(0,0,7,7);
      line(7,7,6,6);
      line(7,7,5,6);
      
      
      
      
    } else if (pointdir[5] < 0) {
      
      line(-3,3,3,-3);
      line(-3,-3,3,3);
      
    }
    
    
    popMatrix();



    //if (loc.x < -80) {
    //  loc.x =80;
    //} else if (loc.x > 80) {
    //  loc.x =-80;
    //} else if (loc.y<-150) {
    //  loc.y = 150;
    //} else if (loc.y > 150) {
    //  loc.y = -150;
    //}
    
    
  }

  void organization() {
    if (pointdir[6] > 0) {
    } else if (pointdir[6] < 0) {
    }
  }

  void proximity() {
    if (pointdir[7] > 0) {
      
    } else if (pointdir[7] < 0) {
      
    }
  }
}
