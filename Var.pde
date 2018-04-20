int lenx = 30;
int leny = 30;

int[][] grid = new int[lenx][leny]; //0 = empty  1 = point  2 = snake

int[] snakex = new int[lenx*leny];
int[] snakey = new int[lenx*leny];

int dir = 2; //0 = left  1 = up  2 = right  3 = down
int lastDir = 2;

int score = 0;

int pointx;
int pointy;

int hx;
int hy;


boolean starting = true;
String staringMessage = "PRESS TO START";
boolean dead = false;
String deadMessage = "GAME OVER  Score: " + score;
boolean paused = false;
String pauseMessage = "PAUSE";

boolean canPlay = !(dead || starting || paused);

float backgroundColor = 0;