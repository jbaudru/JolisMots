
int i = 0, j = 0;
int N = 100;
String[] lines_verbe;
String[] lines_adverbe;
String[] lines_nom;
Boolean saveFlag = true;

color c1 = color(38, 70, 83); 
color c2 = color(42, 157, 143);
color c3 = color(233, 196, 106);
color c4 = color(244, 162, 97);
color c5 = color(231, 111, 81);

void setup(){
  size(800,800);
  strokeWeight(1);
  background(0,0,0);
  lines_verbe = loadStrings("../data/verbe_majuscule.txt");
  lines_adverbe = loadStrings("../data/adverbe.txt");
  lines_nom = loadStrings("../data/det_nom.txt");
  PFont font;
  font = createFont("../data/noah.ttf", 40);
  textAlign(CENTER, CENTER);
  textFont(font, 40);
}


void draw(){
  
    int rd = int(random(0,5));
    if(rd == 0){
      background(c1);
    }
    else if(rd == 1){
      background(c2);
    }
    else if(rd == 2){
      background(c3);
    }
    else if(rd == 3){
      background(c4);
    }
    else if(rd == 4){
      background(c5);
    }
    String currentVerbe = getNextVerbe(lines_verbe);
    String res ="";
    for (int k = 0; k < currentVerbe.length(); k++){
      if(k == 0){
        res += String.valueOf(currentVerbe.charAt(k)).toUpperCase();
      }
      else{
        res += String.valueOf(currentVerbe.charAt(k)).toLowerCase();
      }
    }
    res += " " + getNextAdVerbe(lines_adverbe);
    res += " " + getNextNom(lines_nom) + "." ;
    text(res, width/2, height/2);
    //delay(1000);
    j += 1;
    if(j == N){
      exit();
    }
    if(saveFlag){
      String name = "../save/" + String.valueOf(j) + ".png";
      save(name);
    }
}
 
String getNextAdVerbe(String [] lines){
  i = int(random(0, lines.length));
  return lines[i];
}

String getNextNom(String [] lines){
  i = int(random(0, lines.length));
  return lines[i];
}
 
String getNextVerbe(String [] lines){
  i = int(random(0, lines.length));
  return lines[i];
}
