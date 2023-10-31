class Emblem {

    private int x;
    private int y;
    private float tam;
    private float tamXMax;
    private float tamYMax;
    private int vidaMax = 20;
    private int vida = 19;

    private int speed;


    public Emblem(int posX, int posY, float tam) {
        this.x = posX;
        this.y = posY;
        this.tam = tam;
        changeLimits();
    }

    private void changeLimits() {
        tamXMax = 41 * 4 * tam;
        tamYMax = 45 * 4 * tam;
    }

    public int minXVal() {
        return (int) (this.x - tamXMax/2);
    }

    public int minYVal() {
        return (int) (this.y- tamYMax/2);
    }


    void draw() {

        fill(#071933);
        // draw a ruby
        beginShape();
        rect(x+ int(0*tam), y+ int(20*tam), int(4*tam), int(4*tam));
        rect(x- int(4*tam), y+ int(20*tam), int(4*tam), int(4*tam));
        rect(x+ int(4*tam), y+ int(20*tam), int(4*tam), int(4*tam));
        rect(x- int(8*tam), y+ int(16*tam), int(4*tam), int(4*tam));
        rect(x+ int(8*tam), y+ int(16*tam), int(4*tam), int(4*tam));
        rect(x- int(12*tam), y+ int(12*tam), int(4*tam), int(4*tam));
        rect(x+ int(12*tam), y+ int(12*tam), int(4*tam), int(4*tam));
        rect(x- int(16*tam), y+ int(8*tam), int(4*tam), int(4*tam));
        rect(x+ int(16*tam), y+ int(8*tam), int(4*tam), int(4*tam));
        rect(x- int(16*tam), y+ int(4*tam), int(4*tam), int(4*tam));
        rect(x+ int(16*tam), y+ int(4*tam), int(4*tam), int(4*tam));
        rect(x- int(16*tam), y, int(4*tam), int(4*tam));
        rect(x+ int(16*tam), y, int(4*tam), int(4*tam));
        rect(x- int(16*tam), y- int(4*tam), int(4*tam), int(4*tam));
        rect(x+ int(16*tam), y- int(4*tam), int(4*tam), int(4*tam));
        rect(x- int(16*tam), y- int(8*tam), int(4*tam), int(4*tam));
        rect(x+ int(16*tam), y- int(8*tam), int(4*tam), int(4*tam));
        rect(x- int(12*tam), y- int(12*tam), int(4*tam), int(4*tam));
        rect(x+ int(12*tam), y- int(12*tam), int(4*tam), int(4*tam));
        rect(x- int(8*tam), y- int(16*tam), int(4*tam), int(4*tam));
        rect(x+ int(8*tam), y- int(16*tam), int(4*tam), int(4*tam));
        rect(x- int(4*tam), y- int(20*tam), int(4*tam), int(4*tam));
        rect(x+ int(4*tam), y- int(20*tam), int(4*tam), int(4*tam));
        rect(x+ int(0*tam), y- int(20*tam), int(4*tam), int(4*tam));
        endShape();

        beginShape();
        rect(x- int(8*tam), y+ int(28*tam), int(20*tam), int(4*tam));
        rect(x- int(8*tam), y- int(28*tam), int(20*tam), int(4*tam));
        rect(x- int(24*tam), y- int(12*tam), int(4*tam), int(28*tam));
        rect(x+ int(24*tam), y- int(12*tam), int(4*tam), int(28*tam));
        rect(x+ int(16*tam), y+ int(16*tam), int(8*tam), int(4*tam));
        rect(x+ int(16*tam), y+ int(20*tam), int(4*tam), int(4*tam));
        rect(x+ int(12*tam), y+ int(20*tam), int(4*tam), int(8*tam));
        rect(x+ int(12*tam), y- int(24*tam), int(4*tam), int(8*tam));
        rect(x+ int(16*tam), y- int(20*tam), int(4*tam), int(4*tam));
        rect(x+ int(16*tam), y- int(16*tam), int(8*tam), int(4*tam));
        rect(x- int(20*tam), y+ int(16*tam), int(8*tam), int(4*tam));
        rect(x- int(16*tam), y+ int(20*tam), int(4*tam), int(4*tam));
        rect(x- int(12*tam), y+ int(20*tam), int(4*tam), int(8*tam));
        rect(x- int(12*tam), y- int(24*tam), int(4*tam), int(8*tam));
        rect(x- int(16*tam), y- int(20*tam), int(4*tam), int(4*tam));
        rect(x- int(20*tam), y- int(16*tam), int(8*tam), int(4*tam));
        endShape();

        beginShape();
        rect(x- int(40*tam), y+ int(0*tam), int(16*tam), int(4*tam));
        rect(x+ int(28*tam), y+ int(0*tam), int(16*tam), int(4*tam));
        rect(x+ int(0*tam), y- int(44*tam), int(4*tam), int(16*tam));
        rect(x+ int(0*tam), y+ int(32*tam), int(4*tam), int(16*tam));
        rect(x- int(40*tam), y- int(12*tam), int(4*tam), int(28*tam));
        rect(x+ int(40*tam), y- int(12*tam), int(4*tam), int(28*tam));
        rect(x- int(8*tam), y- int(44*tam), int(20*tam), int(4*tam));
        rect(x- int(8*tam), y+ int(44*tam), int(20*tam), int(4*tam));
        rect(x- int(20*tam), y- int(40*tam), int(12*tam), int(4*tam));
        rect(x+ int(12*tam), y- int(40*tam), int(12*tam), int(4*tam));
        rect(x- int(20*tam), y+ int(40*tam), int(12*tam), int(4*tam));
        rect(x+ int(12*tam), y+ int(40*tam), int(12*tam), int(4*tam));
        rect(x- int(24*tam), y- int(36*tam), int(4*tam), int(4*tam));
        rect(x- int(28*tam), y- int(32*tam), int(4*tam), int(4*tam));
        rect(x+ int(24*tam), y- int(36*tam), int(4*tam), int(4*tam));
        rect(x+ int(28*tam), y- int(32*tam), int(4*tam), int(4*tam));
        rect(x- int(24*tam), y+ int(36*tam), int(4*tam), int(4*tam));
        rect(x- int(28*tam), y+ int(32*tam), int(4*tam), int(4*tam));
        rect(x+ int(24*tam), y+ int(36*tam), int(4*tam), int(4*tam));
        rect(x+ int(28*tam), y+ int(32*tam), int(4*tam), int(4*tam));
        rect(x- int(32*tam), y- int(28*tam), int(4*tam), int(8*tam));
        rect(x- int(36*tam), y- int(20*tam), int(4*tam), int(8*tam));
        rect(x+ int(32*tam), y- int(28*tam), int(4*tam), int(8*tam));
        rect(x+ int(36*tam), y- int(20*tam), int(4*tam), int(8*tam));
        rect(x- int(32*tam), y+ int(24*tam), int(4*tam), int(8*tam));
        rect(x- int(36*tam), y+ int(16*tam), int(4*tam), int(8*tam));
        rect(x+ int(32*tam), y+ int(24*tam), int(4*tam), int(8*tam));
        rect(x+ int(36*tam), y+ int(16*tam), int(4*tam), int(8*tam));
        endShape();
    }

    public boolean collide(int xObj, int yObj, float tamXObj, float tamYObj) {
        if (this.x + tamXMax > x && this.x < xObj + tamXObj && this.y + tamYMax > y && this.y < yObj + tamYObj) {
            vida--;
            return true;
        }
        return false;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public int getSpeed() {
        return speed;
    }

    public void setVida(int vida) {
        this.vida = vida;
    }

    public int getVida() {
        return vida;
    }

    public void setVidaMax(int vidaMax) {
        this.vidaMax = vidaMax;
    }

    public int getVidaMax() {
        return vidaMax;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public float getTam() {
        return tam;
    }

    public float getTamXMax() {
        return tamXMax;
    }

    public float getTamYMax() {
        return tamYMax;
    }

    public void setTam(float tam) {
        this.tam = tam;
    }

    public void setTamXMax(float tamXMax) {
        this.tamXMax = tamXMax;
    }

    public void setTamYMax(float tamYMax) {
        this.tamYMax = tamYMax;
    }

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

}