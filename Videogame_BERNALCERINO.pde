PersonajeMelee pej;

void setup() {
    size(1000,1000);
    background(255);
    pej = new PersonajeMelee(250,250,4);
}

void draw() {
    background(255);
    pej.dibujar();
}
