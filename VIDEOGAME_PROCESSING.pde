Fighter pej;
Mage mage;

color blueColor = #52a3cc;
color redColor = #8c0e54;
color purpleColor = #6821a6;
color greenColor = #0e8c45;

color clothesColor = #3868ba;
color hairColor = blueColor;
color skinColor = #e5beac;

void setup() {
    size(1000,1000);
    background(255);
    pej = new Fighter(500,500,4);
    mage = new Mage(200,200,1);
}

void draw() {
    background(255);
    pej.idleFront(hairColor, clothesColor, skinColor);
    mage.idleFront();
}
