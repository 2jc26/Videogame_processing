class Fireball {

    private int x;
    private int y;
    private int directionX;
    private int directionY;
    private float tam;
    private float tamXMax;
    private float tamYMax;
    private boolean colission = false;
    

    public Fireball(int x, int y, int speed, float tam) {
        this.x = x;
        this.y = y;
        this.directionX = speed;
        this.directionY = speed;
        this.tam = tam;
        changeLimits();
    }

    private void changeLimits() {
        tamXMax = 28*4*tam;
        tamYMax = 20*4*tam;
    }

    void draw() {
        beginShape();
        fill(#F11004);
        noStroke();
        rect(x, y+int(6*4*tam), int(4*tam), int(8*tam));
        rect(x+int(4*tam), y+int(7*4*tam), int(4*tam), int(4*tam));
        rect(x+int(2*4*tam), y+int(8*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(9*4*tam), int(3*4*tam), int(4*tam));
        rect(x+int(7*4*tam), y+int(10*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(9*4*tam), y+int(11*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(11*4*tam), y+int(12*4*tam), int(1*4*tam), int(4*tam));
        rect(x+int(12*4*tam), y+int(13*4*tam), int(6*4*tam), int(4*tam));
        rect(x+int(12*4*tam), y, int(6*4*tam), int(4*tam));
        rect(x+int(11*4*tam), y+int(1*4*tam), int(1*4*tam), int(4*tam));
        rect(x+int(9*4*tam), y+int(2*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(7*4*tam), y+int(3*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(4*4*tam), int(3*4*tam), int(4*tam));
        rect(x+int(1*4*tam), y+int(5*4*tam), int(3*4*tam), int(4*tam));
        fill(#F56E00);
        rect(x+int(12*4*tam), y+int(1*4*tam), int(7*4*tam), int(4*tam));
        rect(x+int(11*4*tam), y+int(2*4*tam), int(8*4*tam), int(4*tam));
        rect(x+int(9*4*tam), y+int(3*4*tam), int(10*4*tam), int(4*tam));
        rect(x+int(7*4*tam), y+int(4*4*tam), int(12*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(5*4*tam), int(15*4*tam), int(4*tam));
        rect(x+int(1*4*tam), y+int(6*4*tam), int(18*4*tam), int(4*tam));
        rect(x+int(2*4*tam), y+int(7*4*tam), int(17*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(8*4*tam), int(15*4*tam), int(4*tam));
        rect(x+int(7*4*tam), y+int(9*4*tam), int(12*4*tam), int(4*tam));
        rect(x+int(9*4*tam), y+int(10*4*tam), int(10*4*tam), int(4*tam));
        rect(x+int(11*4*tam), y+int(11*4*tam), int(8*4*tam), int(4*tam));
        rect(x+int(12*4*tam), y+int(12*4*tam), int(7*4*tam), int(4*tam));
        fill(#F5CF00);
        rect(x+int(15*4*tam), y+int(2*4*tam), int(5*4*tam), int(4*tam));
        rect(x+int(13*4*tam), y+int(3*4*tam), int(8*4*tam), int(4*tam));
        rect(x+int(11*4*tam), y+int(4*4*tam), int(11*4*tam), int(4*tam));
        rect(x+int(8*4*tam), y+int(5*4*tam), int(14*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(6*4*tam), int(18*4*tam), int(4*tam));
        rect(x+int(9*4*tam), y+int(7*4*tam), int(13*4*tam), int(4*tam));
        rect(x+int(10*4*tam), y+int(8*4*tam), int(11*4*tam), int(4*tam));
        rect(x+int(10*4*tam), y+int(8*4*tam), int(12*4*tam), int(4*tam));
        rect(x+int(12*4*tam), y+int(9*4*tam), int(10*4*tam), int(4*tam));
        rect(x+int(13*4*tam), y+int(10*4*tam), int(8*4*tam), int(4*tam));
        rect(x+int(15*4*tam), y+int(11*4*tam), int(5*4*tam), int(4*tam));
        fill(#F5EEC6);
        rect(x+int(16*4*tam), y+int(3*4*tam), int(4*4*tam), int(4*tam));
        rect(x+int(15*4*tam), y+int(4*4*tam), int(6*4*tam), int(4*tam));
        rect(x+int(14*4*tam), y+int(5*4*tam), int(7*4*tam), int(4*4*tam));
        rect(x+int(15*4*tam), y+int(9*4*tam), int(6*4*tam), int(4*tam));
        rect(x+int(16*4*tam), y+int(10*4*tam), int(4*4*tam), int(4*tam));
        endShape();
    }
    
    void move(int inicialX, int limitX, int inicialY, int limitY) {
    limitX -= int(tamXMax);
    limitY -= int(tamYMax);
    x += directionX;
    y += directionY;
    
    if (x > limitX || x < inicialX) {
        directionX *= -1;
        int randomY = int(random(2));
        if (randomY == 0) {
            directionY = -1;
        } else {
            directionY = 1;
        }
    }
    if (y > limitY || y < inicialY) {
        directionY *= -1;
        int randomX = int(random(2));
        if (randomX == 0) {
            directionX = -1;
        } else {
            directionX = 1;
        }
    }
}


}