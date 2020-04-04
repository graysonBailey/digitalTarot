import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.Collections; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class digitalTarot extends PApplet {



ArrayList<tarotArticle> deck = new ArrayList<tarotArticle>();
String[] lexicon = {"perception","control","population","resolution","construction","movement","organization","proximity"};
String[] manifests = {"object","hierarchy","crowd","clarity","development","dynamic", "symmetry","immediacy"};
String[] opposites = {"subject","distribution","isolation","mystery","deconstruction","static", "asymmetry","distance"};

public void settings() {
  size(800,800);
}

public void setup() {
  background(0);

  loadDeck();
}

public void draw() {
}


public void loadDeck() {
  for (int i = 0; i<=1; i++) {
    for (int j = 0; j<=1; j++) {
      for (int k = 0; k<=1; k++) {
        for (int l = 0; l<=1; l++) {
          for (int m = 0; m<=1; m++) {
            for (int n = 0; n<=1; n++) {
              for (int o = 0; o<=1; o++) {
                for (int p = 0; p<=1; p++) {
                  int[] temp = {i,j,k,l,m,n,o,p};
                  deck.add(new tarotArticle(temp));
                }
              }
            }
          }
        }
      }
    }
  }

  println(deck.get(1).aspects);
}


public void mouseClicked(){
  background(0);
  Collections.shuffle(deck);
  deck.get(0).showUpLarge(mouseX,mouseY);
  println("correct");
}
class tarotArticle {

  int[] aspects;


  tarotArticle(int[] valSet) {
    aspects = valSet;
  }

  public void showUpLarge(int x, int y) {
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
    strokeWeight(.8f);
    rect(0, 0, 160, 20);



    popMatrix();

    pushMatrix();
    translate(x+240, y);
       strokeWeight(2);

    rect(0, 0, 200, 400);

    popMatrix();
  }



  public void drawOriented(String s, int size, int x, int y) {
    textSize(size);
    for (int i =s.length()-1; i >=0; i--) {
      text(s.charAt(i), x, y);
      y-=size;
    }
  }

  public void drawReversed(String s, int size, int x, int y) {
    textSize(size);
    for (int i =0; i <s.length(); i++) {
      text(s.charAt(i), x, y);
      y+=size;
    }
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "digitalTarot" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
