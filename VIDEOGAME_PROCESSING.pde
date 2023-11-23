import controlP5.*;

ControlP5 cp5;
Fighter pej;
Mage mage;
Emblem emblem;
Combat1 combat1;
Initial inicial;
Indexer indexer;
Dungeon dungeon;
Menu menu;
St st;
Rewards rewards;
Minigame2 minigame2;
Minigame3 minigame3;
Ranking ranking;


color blueColor = #52a3cc;
color redColor = #8c0e54;
color purpleColor = #6821a6;
color greenColor = #0e8c45;

color clothesColor = #3868ba;
color hairColor = blueColor;
color skinColor = #e5beac;

int screen = 7;
int points = 0;

String[] story1 = new String[1];
String[] story2 = new String[1];
String[] story3 = new String[1];

String[] recompensa1 = new String[1];
String[] recompensa2 = new String[1];
String[] recompensa3 = new String[1];

String nombre;
boolean registered;

void setup() {
    size(1000,900);
    background(255);
    story1 = loadStrings("./story/story1.txt");
    story2 = loadStrings("./story/story2.txt");
    story3 = loadStrings("./story/story3.txt");
    recompensa1 = loadStrings("./rewards/reward1.txt");
    recompensa2 = loadStrings("./rewards/reward2.txt");
    recompensa3 = loadStrings("./rewards/reward3.txt");
    cp5 = new ControlP5(this);
    indexer = new Indexer();
    pej = new Fighter(500,500,1);
    mage = new Mage(100,100,0.5);
    emblem = new Emblem(480,700,0.5);
    combat1 = new Combat1(emblem, 16, indexer, 4);
    dungeon = new Dungeon(pej, clothesColor, hairColor, skinColor);
    inicial = new Initial(pej, mage, emblem, clothesColor, hairColor, skinColor);
    menu = new Menu("Principal", cp5);
    st = new St(story1);
    rewards = new Rewards(recompensa1);
    nombre = "";
    registered = false;
    minigame2 = new Minigame2(emblem);
    minigame3 = new Minigame3(emblem);
    ranking = new Ranking();
}

void draw() {
    if (menu.getState().equals("Principal"))
        menu.draw();
    else {
        switch (screen) {
            case 0:
                if (registered) {
                    screen = dungeon.draw(screen);
                    break;
                }
                else {
                    background(255);
                    textSize(32);
                    fill(0);
                    text("Ingrese su nombre: ", 400, 400);
                    text(nombre, 400, 450);
                    break;
                }
            case 1:
                screen = st.draw(screen,24);
                break;
            case 2:
                screen = dungeon.draw(screen);
                break;
            case 3:
                screen = inicial.draw(screen);
                break;
            case 4:
                screen = combat1.draw(screen);
                break;
            case 5:
                screen = rewards.draw(screen);
                break;
            case 6:
                screen = dungeon.draw(screen);
                break;
            case 7:
                screen = minigame2.draw(screen, 1);
                if (screen != 7) {
                    minigame2.calculetePoints();
                    points += minigame2.getPoints();
                }
                break;
            case 8:
                screen = inicial.draw(screen);
                break;
            case 9:
                screen = combat1.draw(screen);
                break;
            case 10:
                screen = rewards.draw(screen);
                break;
            case 11:
                screen = st.draw(screen,24);
                break;
            case 12:
                screen = dungeon.draw(screen);
                break;
            case 13:
                screen = minigame2.draw(screen, 2);
                if (screen != 13) {
                    minigame2.calculetePoints();
                    points += minigame2.getPoints();
                }
                break;
            case 14:
                screen = inicial.draw(screen);
                break;
            case 15:
                screen = combat1.draw(screen);
                break;
            case 16:
                screen = rewards.draw(screen);
                break;
            case 17:
                screen = dungeon.draw(screen);
                break;
            case 18:
                screen = st.draw(screen,24);
                break;
            case 19:
                screen = minigame3.draw(screen);
                break;
            case 20:
                screen = dungeon.draw(screen);
                break;
            case 21:
                screen = dungeon.draw(screen);
                break;
            case 22:
                screen = inicial.draw(screen);
                break;
            case 23:
                screen = combat1.draw(screen);
                break;
            case 24:
                screen = st.draw(screen,24);
                break;
            case 25:
                ranking.drawScore(nombre, points);
                break;
        }

    }
}

void keyPressed() {
    if (screen == 0) {
        if (keyCode == ENTER) {
            if (nombre.length() > 0) {
                registered = true;
            }
        } else if (keyCode == BACKSPACE) {
            if (nombre.length() > 0) {
                nombre = nombre.substring(0, nombre.length()-1);
            }
        } else {
            nombre += key;
        }
    }
    if (screen == 25) {
        if (keyCode == ' ') {
            screen = 0;
            menu.setState("Principal");
            menu.ranking();
        }
    }
}


