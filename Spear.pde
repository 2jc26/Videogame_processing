class Spear {

    private int x;
    private int y;
    private int directionX;
    private int directionY;
    private float tam;
    private float tamXMax;
    private float tamYMax;
    private int index;
    private boolean colisionB = false;

    public Spear(int x, int y, int speed, float tam, int index) {
        this.x = x;
        this.y = y;
        this.directionX = speed;
        this.directionY = speed;
        this.tam = tam;
        this.index = index;
        changeLimits();
    }

    private void changeLimits() {
        tamXMax = 22 * 4 * tam;
        tamYMax = 21 * 4 * tam;
    }

    void draw() {
        beginShape();
        fill(0);
        noStroke();
        rect(x, y, int(2*4*tam), int(4*tam));
        rect(x+int(2*4*tam), y+int(4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(2*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(6*4*tam), y+int(3*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(8*4*tam), y+int(4*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(10*4*tam), y+int(5*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(12*4*tam), y+int(6*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(14*4*tam), y+int(7*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(16*4*tam), y+int(8*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(18*4*tam), y+int(9*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(20*4*tam), y+int(10*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(18*4*tam), y+int(11*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(16*4*tam), y+int(12*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(14*4*tam), y+int(13*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(12*4*tam), y+int(14*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(10*4*tam), y+int(15*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(8*4*tam), y+int(16*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(6*4*tam), y+int(17*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(4*4*tam), y+int(18*4*tam), int(2*4*tam), int(4*tam));
        rect(x+int(2*4*tam), y+int(19*4*tam), int(2*4*tam), int(4*tam));
        rect(x, y+int(20*4*tam), int(2*4*tam), int(4*tam));
        rect(x, y, int(4*tam), int(20*4*tam));
        rect(x+int(-125*4*tam),y+int(12*4*tam), int(126*4*tam), int(1*4*tam));
        rect(x+int(-125*4*tam),y+int(8*4*tam), int(126*4*tam), int(1*4*tam));
        fill(#636060);
        rect(x+int(4*tam),y+int(4*tam), int(4*tam), int(19*4*tam));
        rect(x+int(2*4*tam),y+int(2*4*tam), int(2*4*tam), int(17*4*tam));
        rect(x+int(4*4*tam),y+int(3*4*tam), int(2*4*tam), int(15*4*tam));
        rect(x+int(6*4*tam),y+int(4*4*tam), int(2*4*tam), int(13*4*tam));
        rect(x+int(8*4*tam),y+int(5*4*tam), int(2*4*tam), int(11*4*tam));
        rect(x+int(10*4*tam),y+int(6*4*tam), int(2*4*tam), int(9*4*tam));
        rect(x+int(12*4*tam),y+int(7*4*tam), int(2*4*tam), int(7*4*tam));
        rect(x+int(14*4*tam),y+int(8*4*tam), int(2*4*tam), int(5*4*tam));
        rect(x+int(16*4*tam),y+int(9*4*tam), int(2*4*tam), int(3*4*tam));
        rect(x+int(18*4*tam),y+int(10*4*tam), int(2*4*tam), int(1*4*tam));
        rect(x+int(-125*4*tam),y+int(9*4*tam), int(126*4*tam), int(1*4*tam));
        rect(x+int(-125*4*tam),y+int(10*4*tam), int(126*4*tam), int(1*4*tam));
        rect(x+int(-125*4*tam),y+int(11*4*tam), int(126*4*tam), int(1*4*tam));
        endShape();

    }

    void move(int inicialX, int limitX, int inicialY,int limitY) {
        x += directionX;
        // y += directionY;
        if (x > 900 || x < 0) {
            // directionX *= -1;
            x = inicialX;
            colisionB = false;
        }
        // if (y > tamYMax || y < 0) {
        //     directionY *= -1;
        // }
    }

    boolean colision(int xObj, int yObj, float maxXobj, float maxYObj) {
        if (colisionB) return false;
        colisionB = true;
        if ((xObj < (x + tamXMax)) && ((maxXobj) > int(minX())) && (yObj < (y + tamYMax)) && ((maxYObj) > y)) {
            // print("colision:  "+"xEmblema: "+xObj+", yEmblema: "+yObj+", xFinEmblema: "+maxXobj+", yFinEmblema: "+maxYObj+"\nxMinSpare: "+minX()+", yMinSpare: "+y+", xMaxSpare: "+(x+tamXMax)+", yMaxSpare: "+(y+tamYMax)+"\n");
            return true;
        }
        colisionB = false;
        return false;
    }

    int getIndex() {
        return index;
    }

    int getX() {
        return x;
    }

    int getY() {
        return y;
    }

    void setX(int x) {
        this.x = x;
    }

    void setY(int y) {
        this.y = y;
    }

    float minX() {
        return x-125*4*tam;
    }

}