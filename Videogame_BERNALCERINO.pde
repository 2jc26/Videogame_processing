Fighter pej;

void setup() {
    size(1000,1000);
    background(255);
    pej = new Fighter(500,500,4);
}

void draw() {
    background(255);
    pej.idleFront();
}
