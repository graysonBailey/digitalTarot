class tarotArticle {

  int[] aspects;


  tarotArticle(int[] valSet) {
    aspects = valSet;
  }

  void showUpLarge(int x, int y) {
    pushMatrix();
    translate(x, y);
    noFill();
    stroke(255);
    rectMode(CENTER);
    strokeWeight(2);
    rect(0, 0, 200, 400);
    textAlign(CENTER, CENTER);

    for (int i = 0; i <aspects.length; i++) {
      text(aspects[i], -70+(i*20), 0);
      if(aspects[i]>0){
        int orient = round(random(0,1));
        if(orient == 0){
        drawOriented(manifests[i],12,-70+(i*20),-25);
        } else {
         drawReversed(opposites[i],12,-70+(i*20),25);
        }
      }
    }
    strokeWeight(.8);
    rect(0, 0, 160, 20);



    popMatrix();

    pushMatrix();
    translate(x+240, y);
       strokeWeight(2);

    rect(0, 0, 200, 400);

    popMatrix();
  }



  void drawOriented(String s, int size, int x, int y) {
    textSize(size);
    for (int i =s.length()-1; i >=0; i--) {
      text(s.charAt(i), x, y);
      y-=size;
    }
  }

  void drawReversed(String s, int size, int x, int y) {
    textSize(size);
    for (int i =0; i <s.length(); i++) {
      text(s.charAt(i), x, y);
      y+=size;
    }
  }
}
