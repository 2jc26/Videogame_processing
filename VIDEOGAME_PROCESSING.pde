Fighter pej;
Mage mage;
Emblem emblem;
Fireball fireball;
Combat1 combat1;
Initial inicial;
Indexer indexer;

color blueColor = #52a3cc;
color redColor = #8c0e54;
color purpleColor = #6821a6;
color greenColor = #0e8c45;

color clothesColor = #3868ba;
color hairColor = blueColor;
color skinColor = #e5beac;

int screen = 0;

Spear spear;

void setup() {
    size(1000,1000);
    background(255);
    indexer = new Indexer();
    pej = new Fighter(500,500,1);
    mage = new Mage(100,100,0.5);
    emblem = new Emblem(480,700,0.5);
    fireball = new Fireball(400,750,1, 0.5, 0);
    combat1 = new Combat1(emblem, 16, indexer);
    inicial = new Initial(pej, mage, emblem, fireball, clothesColor, hairColor, skinColor);
}

void draw() {
    switch (screen) {
        case 0:
            screen = inicial.draw();
            break;
        case 1:
            combat1.draw();
            break;
        default :
            
        break;	

    }
}


// String[] lines;
// int fontSize = 20;

// File ig = new File("letra.txt")

// void setup() {
//     size(1000,1000);
//     background(255);
//     lines = loadStrings("letra.txt");
//     println(lines);
// }

// void draw() {
//     background(255);
//     fill(0);
// }
