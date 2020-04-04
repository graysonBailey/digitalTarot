import java.util.Collections;

ArrayList<tarotArticle> deck = new ArrayList<tarotArticle>();
String[] lexicon = {"perception","control","population","resolution","construction","movement","organization","proximity"};
String[] manifests = {"object","hierarchy","crowd","clarity","development","dynamic", "symmetry","immediacy"};
String[] opposites = {"subject","distribution","isolation","mystery","deconstruction","static", "asymmetry","distance"};

void settings() {
  size(800,800);
}

void setup() {
  background(0);

  loadDeck();
}

void draw() {
}


void loadDeck() {
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


void mouseClicked(){
  background(0);
  Collections.shuffle(deck);
  deck.get(0).showUpLarge(mouseX,mouseY);
  println("correct");
}
