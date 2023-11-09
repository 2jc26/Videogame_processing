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


color blueColor = #52a3cc;
color redColor = #8c0e54;
color purpleColor = #6821a6;
color greenColor = #0e8c45;

color clothesColor = #3868ba;
color hairColor = blueColor;
color skinColor = #e5beac;

int screen = 1;

String[] story1;
String[] story2;
String[] story3;

String[] recompensa1;
String[] recompensa2;
String[] recompensa3;

void setup() {
    size(1000,1000);
    background(255);
    cp5 = new ControlP5(this);
    indexer = new Indexer();
    pej = new Fighter(500,500,1);
    mage = new Mage(100,100,0.5);
    emblem = new Emblem(480,700,0.5);
    combat1 = new Combat1(emblem, 16, indexer, 2);
    dungeon = new Dungeon(pej, clothesColor, hairColor, skinColor);
    inicial = new Initial(pej, mage, emblem, clothesColor, hairColor, skinColor);
    menu = new Menu("Principal", cp5);
    st = new St();
    rewards = new Rewards();


    // lines = loadStrings("./story/letra.txt");
    // println(lines);
}

void draw() {

    if (menu.getState().equals("Principal"))
        menu.draw();
    else {
        switch (screen) {
            case 0:
                screen = dungeon.draw(screen);
                break;
            case 1:
                screen = inicial.draw(screen);
                break;
            case 2:
                screen = combat1.draw(screen);
                break;
            case 3:
                screen = rewards.draw(screen);
                break;
            case 4:
                screen = dungeon.draw(screen);
                break;
            case 5:
                screen = dungeon.draw(screen);
                break;
            case 6:
                screen = rewards.draw(screen);
                break;
            case 7:
                screen = st.draw(screen);
                break;
            case 8:
                screen = dungeon.draw(screen);
                break;
            case 9:
                screen = inicial.draw(screen);
                break;
            case 10:
                screen = combat1.draw(screen);
                break;
            case 11:
                screen = dungeon.draw(screen);
                break;
            case 12:
                screen = rewards.draw(screen);
                break;
            case 13:
                screen = dungeon.draw(screen);
                break;
            case 14:
                screen = st.draw(screen);
                break;
            case 15:
                screen = dungeon.draw(screen);
                break;
            case 16:
                screen = dungeon.draw(screen);
                break;
            case 17:
                screen = st.draw(screen);
                break;
        }

    }
}


