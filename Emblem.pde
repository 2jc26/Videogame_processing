class Emblem {

    private int x;
    private int y;
    private float tam;

    private int speed;


    public Emblem(int posX, int posY, float tam) {
        this.x = posX;
        this.y = posY;
        this.tam = tam;
    }


    void draw() {

        fill(#071933);
        // draw a ruby
        beginShape();
        rect(x+0*tam, y+20*tam, 4*tam, 4*tam);
        rect(x-4*tam, y+20*tam, 4*tam, 4*tam);
        rect(x+4*tam, y+20*tam, 4*tam, 4*tam);
        rect(x-8*tam, y+16*tam, 4*tam, 4*tam);
        rect(x+8*tam, y+16*tam, 4*tam, 4*tam);
        rect(x-12*tam, y+12*tam, 4*tam, 4*tam);
        rect(x+12*tam, y+12*tam, 4*tam, 4*tam);
        rect(x-16*tam, y+8*tam, 4*tam, 4*tam);
        rect(x+16*tam, y+8*tam, 4*tam, 4*tam);
        rect(x-16*tam, y+4*tam, 4*tam, 4*tam);
        rect(x+16*tam, y+4*tam, 4*tam, 4*tam);
        rect(x-16*tam, y, 4*tam, 4*tam);
        rect(x+16*tam, y, 4*tam, 4*tam);
        rect(x-16*tam, y-4*tam, 4*tam, 4*tam);
        rect(x+16*tam, y-4*tam, 4*tam, 4*tam);
        rect(x-16*tam, y-8*tam, 4*tam, 4*tam);
        rect(x+16*tam, y-8*tam, 4*tam, 4*tam);
        rect(x-12*tam, y-12*tam, 4*tam, 4*tam);
        rect(x+12*tam, y-12*tam, 4*tam, 4*tam);
        rect(x-8*tam, y-16*tam, 4*tam, 4*tam);
        rect(x+8*tam, y-16*tam, 4*tam, 4*tam);
        rect(x-4*tam, y-20*tam, 4*tam, 4*tam);
        rect(x+4*tam, y-20*tam, 4*tam, 4*tam);
        rect(x+0*tam, y-20*tam, 4*tam, 4*tam);
        endShape();

        beginShape();
        rect(x-8*tam, y+28*tam, 20*tam, 4*tam);
        rect(x-8*tam, y-28*tam, 20*tam, 4*tam);
        rect(x-24*tam, y-12*tam, 4*tam, 28*tam);
        rect(x+24*tam, y-12*tam, 4*tam, 28*tam);
        rect(x+16*tam, y+16*tam, 8*tam, 4*tam);
        rect(x+16*tam, y+20*tam, 4*tam, 4*tam);
        rect(x+12*tam, y+20*tam, 4*tam, 8*tam);
        rect(x+12*tam, y-24*tam, 4*tam, 8*tam);
        rect(x+16*tam, y-20*tam, 4*tam, 4*tam);
        rect(x+16*tam, y-16*tam, 8*tam, 4*tam);
        rect(x-20*tam, y+16*tam, 8*tam, 4*tam);
        rect(x-16*tam, y+20*tam, 4*tam, 4*tam);
        rect(x-12*tam, y+20*tam, 4*tam, 8*tam);
        rect(x-12*tam, y-24*tam, 4*tam, 8*tam);
        rect(x-16*tam, y-20*tam, 4*tam, 4*tam);
        rect(x-20*tam, y-16*tam, 8*tam, 4*tam);
        endShape();

        beginShape();
        rect(x-40*tam, y+0*tam, 16*tam, 4*tam);
        rect(x+28*tam, y+0*tam, 16*tam, 4*tam);
        rect(x+0*tam, y-44*tam, 4*tam, 16*tam);
        rect(x+0*tam, y+32*tam, 4*tam, 16*tam);
        rect(x-40*tam, y-12*tam, 4*tam, 28*tam);
        rect(x+40*tam, y-12*tam, 4*tam, 28*tam);
        rect(x-8*tam, y-44*tam, 20*tam, 4*tam);
        rect(x-8*tam, y+44*tam, 20*tam, 4*tam);
        rect(x-20*tam, y-40*tam, 12*tam, 4*tam);
        rect(x+12*tam, y-40*tam, 12*tam, 4*tam);
        rect(x-20*tam, y+40*tam, 12*tam, 4*tam);
        rect(x+12*tam, y+40*tam, 12*tam, 4*tam);
        rect(x-24*tam, y-36*tam, 4*tam, 4*tam);
        rect(x-28*tam, y-32*tam, 4*tam, 4*tam);
        rect(x+24*tam, y-36*tam, 4*tam, 4*tam);
        rect(x+28*tam, y-32*tam, 4*tam, 4*tam);
        rect(x-24*tam, y+36*tam, 4*tam, 4*tam);
        rect(x-28*tam, y+32*tam, 4*tam, 4*tam);
        rect(x+24*tam, y+36*tam, 4*tam, 4*tam);
        rect(x+28*tam, y+32*tam, 4*tam, 4*tam);
        rect(x-32*tam, y-28*tam, 4*tam, 8*tam);
        rect(x-36*tam, y-20*tam, 4*tam, 8*tam);
        rect(x+32*tam, y-28*tam, 4*tam, 8*tam);
        rect(x+36*tam, y-20*tam, 4*tam, 8*tam);
        rect(x-32*tam, y+24*tam, 4*tam, 8*tam);
        rect(x-36*tam, y+16*tam, 4*tam, 8*tam);
        rect(x+32*tam, y+24*tam, 4*tam, 8*tam);
        rect(x+36*tam, y+16*tam, 4*tam, 8*tam);
        endShape();
    }
}