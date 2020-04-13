// if wanted, reversabals can actually be a negative subet of the cards,
// the -127 values which an 8bit int would save...
// and the 127 above... if going by one's complement with +0 and -0....
// or -128 below and 127 above....

import java.util.Collections;

ArrayList<tarotArticle> deck = new ArrayList<tarotArticle>();
String[] lexicon = {"proximity","organization","movement","construction","resolution","population","control","perception"};
String[] manifests = {"immediacy", "symmetry","dynamic","development","clarity","crowd","hierarchy","object"};
String[] opposites = {"distance","asymmetry","idle","deconstruction","mystery","isolation", "distribution","subject"};

void settings() {
  size(800,800);
}

void setup() {
  background(0);
  lexicon = reverse(lexicon);
  manifests = reverse(manifests);
  opposites = reverse(opposites);
  loadDeck();
  smooth();
}

void draw() {
  //background(0);
  //deck.get(0).showUpLarge(mouseX,mouseY);
}


void loadDeck() {
  int num = 0;
  for (int i = 0; i<=1; i++) {
    for (int j = 0; j<=1; j++) {
      for (int k = 0; k<=1; k++) {
        for (int l = 0; l<=1; l++) {
          for (int m = 0; m<=1; m++) {
            for (int n = 0; n<=1; n++) {
              for (int o = 0; o<=1; o++) {
                for (int p = 0; p<=1; p++) {
                  int[] temp = {p,o,n,m,l,k,j,i};
                  
                  deck.add(new tarotArticle(temp,num));
                  num++;
                }
              }
            }
          }
        }
      }
    }
  }

  //println(deck.get(1).aspects);
}


void mouseClicked(){
  background(0);
  Collections.shuffle(deck);
  deck.get(0).showUpLarge(mouseX,mouseY);
  

}
