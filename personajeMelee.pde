class PersonajeMelee {

    private int vida;
    private int ataque;
    private int defensa;
    private int velocidad;
    private int rango;
    private int costo;
    private int nivel;
    private int experiencia;
    private int experienciaMax;
    private int nivelMax;

    private int x;
    private int y;
    private int tamanio;

    public PersonajeMelee(int posicionX, int posicionY, int tamanio) {
        this.x = posicionX;
        this.y = posicionY;
        this.tamanio = tamanio;
        
    }

    void dibujar() {

        // Pantalon
        fill(#4675A8);
        beginShape();
        vertex(x+9*tamanio, y+36*tamanio);
        vertex(x+18*tamanio, y+36*tamanio);
        vertex(x+18*tamanio, y+28*tamanio);
        vertex(x+7*tamanio, y+28*tamanio);
        vertex(x+7*tamanio, y+34*tamanio);
        vertex(x+9*tamanio, y+34*tamanio);
        vertex(x+9*tamanio, y+36*tamanio);
        endShape();

        // Camiseta
        fill(#3664B3);
        beginShape();
        vertex(x+7*tamanio, y+28*tamanio);
        vertex(x+5*tamanio, y+28*tamanio);
        vertex(x+5*tamanio, y+23*tamanio);
        vertex(x+7*tamanio, y+23*tamanio);
        vertex(x+7*tamanio, y+21*tamanio);
        vertex(x+17*tamanio, y+21*tamanio);
        vertex(x+17*tamanio, y+23*tamanio);
        vertex(x+20*tamanio, y+23*tamanio);
        vertex(x+20*tamanio, y+28*tamanio);
        vertex(x+18*tamanio, y+28*tamanio);
        vertex(x+7*tamanio, y+28*tamanio);
        endShape();

        // Brazo
        fill(#F2C9A1);
        beginShape();
        vertex(x+9*tamanio, y+25*tamanio);
        vertex(x+12*tamanio, y+25*tamanio);
        vertex(x+12*tamanio, y+27*tamanio);
        vertex(x+14*tamanio, y+27*tamanio);
        vertex(x+14*tamanio, y+30*tamanio);
        vertex(x+11*tamanio, y+30*tamanio);
        vertex(x+11*tamanio, y+28*tamanio);
        vertex(x+9*tamanio, y+28*tamanio);
        vertex(x+9*tamanio, y+25*tamanio);
        endShape();

        // Cabeza
        fill(#4F9DC4);
        beginShape();
        vertex(x+7*tamanio, y+21*tamanio);
        vertex(x+7*tamanio, y+20*tamanio);
        vertex(x+5*tamanio, y+20*tamanio);
        vertex(x+5*tamanio, y+18*tamanio);
        vertex(x+3*tamanio, y+18*tamanio);
        vertex(x+3*tamanio, y+16*tamanio);
        vertex(x+1*tamanio, y+16*tamanio);
        vertex(x+1*tamanio, y+14*tamanio);
        vertex(x+0*tamanio, y+14*tamanio);
        vertex(x+0*tamanio, y+13*tamanio);
        vertex(x+1*tamanio, y+13*tamanio);
        vertex(x+1*tamanio, y+10*tamanio);
        vertex(x+0*tamanio, y+10*tamanio);
        vertex(x+0*tamanio, y+9*tamanio);
        vertex(x+1*tamanio, y+9*tamanio);
        vertex(x+1*tamanio, y+7*tamanio);
        vertex(x+5*tamanio, y+7*tamanio);
        vertex(x+5*tamanio, y+5*tamanio);
        vertex(x+7*tamanio, y+5*tamanio);
        vertex(x+7*tamanio, y+2*tamanio);
        vertex(x+5*tamanio, y+2*tamanio);
        vertex(x+5*tamanio, y+0*tamanio);
        vertex(x+3*tamanio, y+0*tamanio);
        vertex(x+12*tamanio, y+0*tamanio);
        vertex(x+12*tamanio, y+1*tamanio);
        vertex(x+14*tamanio, y+1*tamanio);
        vertex(x+14*tamanio, y+3*tamanio);
        vertex(x+16*tamanio, y+3*tamanio);
        vertex(x+16*tamanio, y+5*tamanio);
        vertex(x+18*tamanio, y+5*tamanio);
        vertex(x+18*tamanio, y+7*tamanio);
        vertex(x+22*tamanio, y+7*tamanio);
        vertex(x+22*tamanio, y+9*tamanio);
        vertex(x+24*tamanio, y+9*tamanio);
        vertex(x+24*tamanio, y+14*tamanio);
        vertex(x+22*tamanio, y+14*tamanio);
        vertex(x+22*tamanio, y+21*tamanio);
        vertex(x+7*tamanio, y+21*tamanio);
        endShape();

        // Cara
        fill(#F2C9A1);
        beginShape();
        vertex(x+21*tamanio, y+22*tamanio);
        vertex(x+15*tamanio, y+22*tamanio);
        vertex(x+15*tamanio, y+20*tamanio);
        vertex(x+13*tamanio, y+20*tamanio);
        vertex(x+13*tamanio, y+17*tamanio);
        vertex(x+19*tamanio, y+17*tamanio);
        vertex(x+19*tamanio, y+15*tamanio);
        vertex(x+21*tamanio, y+15*tamanio);
        vertex(x+21*tamanio, y+22*tamanio);
        endShape();
        beginShape();
        rect(x+17*tamanio, y+13*tamanio, 2*tamanio, 2*tamanio);

    }

    // void cara() {
        
    // }

}

        // vertex(x+145*tamanio, y+150*tamanio);
        // vertex(x+75*tamanio, y+150*tamanio);
        // vertex(x+70*tamanio, y+145*tamanio);
        // vertex(x+70*tamanio, y+70*tamanio);
        // vertex(x+75*tamanio, y+65*tamanio);
        // vertex(x+145*tamanio, y+65*tamanio);
        // vertex(x+8*tamanio, y+130*tamanio);