class tarotArticle {

  int[] aspects;
  int[] aspectsCharge=new int[8];
  int index;
  ArrayList<ecologyAgent> set = new ArrayList<ecologyAgent>();


  tarotArticle(int[] valSet, int num) {
    aspects = valSet;
    index = num;
    assemble(index);
  }

  void showUpLarge(int x, int y) {
    println(aspects);
    println(lexicon);


    pushMatrix();
    translate(x-110, y);
    noFill();
    stroke(255);
    rectMode(CENTER);
    strokeWeight(2);
    rect(0, 0, 200, 400);
    textAlign(CENTER, CENTER);
    text(str(index), 0, -180);
    manifest();
    println(aspectsCharge);
    strokeWeight(.8);
    rect(0, 0, 160, 20);
    popMatrix();

    println(set.size());

    pushMatrix();
    translate(x+110, y);
    strokeWeight(2);

    rect(0, 0, 200, 400);
    presentation();

    popMatrix();
  }

  void manifest() {

    for (int i = aspects.length-1; i > -1; i--) {
      text(aspects[i], 70-(i*20), 0);
      aspectsCharge[i]=0;
      if (aspects[i]>0) {

        int orient = round(random(0, 1));
        if (orient == 0) {
          aspectsCharge[i]=1;
          orientedLexicon(manifests[i], 12, 70-(i*20), -25);
        } else {
          aspectsCharge[i]=-1;
          reversedLexicon(opposites[i], 12, 70-(i*20), 25);
        }
      }
    }

    for (int i = 0; i <set.size(); i++) {
      set.get(i).pointdir=aspectsCharge;
    }
  }

  int calculateBinaryNum(int[] s) {
    int sum = 0;
    for (int i = 0; i<s.length; i++) {
      //println(i+" : "+pow(s[i]*2,i));
      sum += pow(s[i]*2, i);
    }
    println("oh yeah  "+pow(0, 0));

    return sum-1;
  }

  void presentation() {
    fill(255);
    noStroke();


    presentationAgency();

    resolution();
  }

  void presentationAgency() {
    for(int i = 0; i < set.size(); i++){
     set.get(i).vis(); 
    }
  }

  void assemble(int num) {
    for (int i = 0; i < num; i++) {
      set.add(new ecologyAgent(new PVector(random(-80,80),random(-150,150)), aspects));
    }
  }

  void resolution() {

    if (aspectsCharge[3] != 0) {
      if (aspectsCharge[3] >0) {
        stroke(255);
        strokeWeight(.5);
        line(0, -150, 0, 150);
        line(-80, 0, 80, 0);
        noStroke();
        fill(255);
        ellipse(80, -150, 10,10);
      } else {
        for (int i = -150; i<150; i+=5) {
          noFill();
          stroke(255);
          strokeWeight(.5);
          line(-80, i, 80, i); 
          strokeWeight(.5);
          //ellipse(80,-150,5,5);
          noStroke();
          fill(255);
          arc(80, -150, 5, 5, -HALF_PI, HALF_PI);
        }
      }
    }
  }



  void orientedLexicon(String s, int size, int x, int y) {
    textSize(size);
    for (int i =s.length()-1; i >=0; i--) {
      text(s.charAt(i), x, y);
      y-=size;
    }
  }

  void reversedLexicon(String s, int size, int x, int y) {
    textSize(size);
    for (int i =0; i <s.length(); i++) {
      text(s.charAt(i), x, y);
      y+=size;
    }
  }
}
