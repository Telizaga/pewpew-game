ArrayList<GameObject> objects;
Player myPlayer;
color yellow=#FFEE31;
color purple=#CC69E8;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
int mode=INTRO;

boolean wkey, akey, skey, dkey, spacekey;
PFont font;
int shadowOffset = 8;
void setup(){
  size(800,800);
  rectMode(CENTER);
  textAlign(CENTER);
  noStroke();
  wkey = akey = skey = dkey = spacekey = false;
  
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  int i=0;
  while(i<100){
    objects.add(new Obstacle());
    i++;
  }
}

void draw() {
  println(objects.size());
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error");
}
