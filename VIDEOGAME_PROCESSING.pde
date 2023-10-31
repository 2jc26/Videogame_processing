Fighter pej;
Mage mage;
Emblem emblem;
Fireball fireball;
Minigame1 minigame1;
Initial inicial;

color blueColor = #52a3cc;
color redColor = #8c0e54;
color purpleColor = #6821a6;
color greenColor = #0e8c45;

color clothesColor = #3868ba;
color hairColor = blueColor;
color skinColor = #e5beac;

int screen = 1;

void setup() {
    size(1000,1000);
    background(255);
    pej = new Fighter(500,500,4);
    mage = new Mage(200,200,1);
    emblem = new Emblem(750,750,1);
    fireball = new Fireball(400,750,1, 0.5);
    minigame1 = new Minigame1(emblem, 10);
    inicial = new Initial(pej, mage, emblem, fireball, clothesColor, hairColor, skinColor);
}

void draw() {
    switch (screen) {
        case 0:
            inicial.draw();
            break;
        case 1:
            minigame1.draw();
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
