class Mage {

    private int x;
    private int y;
    private int tam;


    public Mage
    (int posX, int posY, int tam) {
        this.x = posX;
        this.y = posY;
        this.tam = tam;
        
    }

    void idleFront() {
        // 33 x 42 

        // Robe
        fill(#38246C);
        noStroke();
        beginShape();

        //Left Side
        rect(x, y+42*4*tam, 14*4*tam, -8*tam);
        rect(x+13*4*tam, y+42*4*tam, 4*tam, -12*tam);
        rect(x+13*4*tam, y+40*4*tam, 5*4*tam, -12*tam);
        rect(x+18*4*tam, y+37*4*tam, 8*tam, -8*tam);
        rect(x+20*4*tam, y+35*4*tam, 12*tam, -12*4*tam);
        rect(x+4*4*tam, y+37*4*tam, 10*4*tam, -8*tam);
        rect(x+5*4*tam, y+35*4*tam, 14*4*tam, -6*4*tam);
        rect(x+6*4*tam, y+29*4*tam, 13*4*tam, -8*tam);
        rect(x+7*4*tam, y+27*4*tam, 12*4*tam, -8*tam);
        rect(x+8*4*tam, y+25*4*tam, 11*4*tam, -4*tam);
        rect(x+10*4*tam, y+24*4*tam, 9*4*tam, -12*tam);
        rect(x+12*4*tam, y+21*4*tam, 7*4*tam, -4*tam);

        // Right side
        rect(x+26*4*tam, y+23*4*tam, 12*tam, 12*4*tam);
        rect(x+29*4*tam, y+25*4*tam, 4*tam, 15*4*tam);
        rect(x+30*4*tam, y+26*4*tam, 4*tam, 14*4*tam);
        rect(x+31*4*tam, y+37*4*tam, 8*tam, 5*4*tam);

        // Hat
        endShape();

        fill(#EC7AF5); // Details
        beginShape();

        endShape();
        
        fill(#0B0000); // Dark subclothes
        rect(x+23*4*tam, y+23*4*tam, 3*4*tam, 12*4*tam);
        rect(x+20*4*tam, y+35*4*tam, 9*4*tam, 8*tam);
        rect(x+18*4*tam, y+37*4*tam, 11*4*tam, 12*tam);
        rect(x+14*4*tam, y+40*4*tam, 17*4*tam, 8*tam);
        beginShape();

        endShape();

        fill(#0A0444); // Sewing
        beginShape();
        rect(x+2*4*tam, y+40*4*tam, 12*4*tam, -4*tam);
        rect(x+3*4*tam, y+39*4*tam, 11*4*tam, -4*tam);
        rect(x+4*4*tam, y+38*4*tam, 10*4*tam, -4*tam);
        rect(x+13*4*tam, y+37*4*tam, 5*4*tam, -8*tam);
        rect(x+18*4*tam, y+35*4*tam, 8*tam, -12*4*tam);
        rect(x+20*4*tam, y+24*4*tam, 4*tam, -4*tam);
        rect(x+18*4*tam, y+23*4*tam, 11*4*tam, -4*tam);
        rect(x+18*4*tam, y+22*4*tam, 10*4*tam, -4*tam);
        rect(x+18*4*tam, y+21*4*tam, 11*4*tam, -4*tam);
        endShape();

    }
}