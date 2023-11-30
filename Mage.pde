class Mage {

    private int x;
    private int y;
    private float tam;


    public Mage
    (int posX, int posY, float tam) {
        this.x = posX;
        this.y = posY;
        this.tam = tam;
        
    }

    public int minY() {
        return y;
    }

    public int maxY() {
        return y+int(42*4*tam);
    }

    public int minX() {
        return x;
    }

    public int maxX() {
        return x+int(33*4*tam);
    }

    void idleFront() {
        // scale(-1, 1);
        noStroke();
        fill(#290050); // Interior hat
        beginShape();
        rect(x+int(15*4*tam), y+int(5*4*tam), int(15*4*tam), int(15*4*tam));
        endShape();

        fill(#2D1D57); // Shadow
        beginShape();
        rect(x+int(3*4*tam), y+int(12*4*tam), int(11*4*tam), int(7*4*tam));
        rect(x+int(8*4*tam), y+int(19*4*tam), int(8*4*tam), int(4*tam));
        rect(x+int(8*4*tam), y+int(19*4*tam), int(4*4*tam), int(2*4*tam));
        endShape();

        // Robe
        fill(#38246C);
        beginShape();
        //Left Side
        rect(x, y+int(42*4*tam), int(14*4*tam), int(-8*tam));
        rect(x+int(13*4*tam), y+int(42*4*tam), int(4*tam), int(-12*tam));
        rect(x+int(13*4*tam), y+int(40*4*tam), int(5*4*tam), int(-12*tam));
        rect(x+int(18*4*tam), y+int(37*4*tam), int(8*tam), int(-8*tam));
        rect(x+int(20*4*tam), y+int(35*4*tam), int(12*tam), int(-12*4*tam));
        rect(x+int(4*4*tam), y+int(37*4*tam), int(10*4*tam), int(-8*tam));
        rect(x+int(5*4*tam), y+int(35*4*tam), int(14*4*tam), int(-6*4*tam));
        rect(x+int(6*4*tam), y+int(29*4*tam), int(13*4*tam), int(-8*tam));
        rect(x+int(7*4*tam), y+int(27*4*tam), int(12*4*tam), int(-8*tam));
        rect(x+int(8*4*tam), y+int(25*4*tam), int(11*4*tam), int(-4*tam));
        rect(x+int(10*4*tam), y+int(24*4*tam), int(9*4*tam), int(-12*tam));
        rect(x+int(12*4*tam), y+int(21*4*tam), int(7*4*tam), int(-4*tam));

        // Right side
        rect(x+int(26*4*tam), y+int(23*4*tam), int(12*tam), int(12*4*tam));
        rect(x+int(29*4*tam), y+int(25*4*tam), int(4*tam), int(15*4*tam));
        rect(x+int(30*4*tam), y+int(26*4*tam), int(4*tam), int(14*4*tam));
        rect(x+int(31*4*tam), y+int(37*4*tam), int(8*tam), int(5*4*tam));

        // Hat
        rect(x+int(29*4*tam), y+int(12*4*tam), int(8*tam), int(-7*4*tam));
        rect(x+int(26*4*tam), y+int(3*4*tam), int(12*tam), int(16*tam));
        rect(x+int(26*4*tam), y+int(2*4*tam), int(8*tam), int(4*tam));
        rect(x+int(26*4*tam), y, int(-13*4*tam), int(5*4*tam));
        rect(x+int(26*4*tam), y+int(4*tam), int(-14*4*tam), int(4*tam));
        rect(x+int(26*4*tam), y+int(8*tam), int(-17*4*tam), int(12*tam));
        rect(x+int(8*4*tam), y+int(5*4*tam), int(14*4*tam), int(3*4*tam));
        rect(x+int(4*4*tam), y+int(8*4*tam), int(14*4*tam), int(2*4*tam));
        rect(x+int(4*4*tam), y+int(10*4*tam), int(13*4*tam), int(2*4*tam));
        rect(x+int(6*4*tam), y+int(12*4*tam), int(7*4*tam), int(3*4*tam));

        endShape();
        
        fill(#0B0000); // Dark subclothes
        beginShape();
        rect(x+int(23*4*tam), y+int(23*4*tam), int(3*4*tam), int(12*4*tam));
        rect(x+int(20*4*tam), y+int(35*4*tam), int(9*4*tam), int(8*tam));
        rect(x+int(18*4*tam), y+int(37*4*tam), int(11*4*tam), int(12*tam));
        rect(x+int(14*4*tam), y+int(40*4*tam), int(17*4*tam), int(8*tam));
        endShape();

        fill(#0A0444); // Sewing
        beginShape();

        // Robe body
        rect(x+int(2*4*tam), y+int(40*4*tam), int(12*4*tam), int(-4*tam));
        rect(x+int(3*4*tam), y+int(39*4*tam), int(11*4*tam), int(-4*tam));
        rect(x+int(4*4*tam), y+int(38*4*tam), int(10*4*tam), int(-4*tam));
        rect(x+int(13*4*tam), y+int(37*4*tam), int(5*4*tam), int(-8*tam));
        rect(x+int(18*4*tam), y+int(35*4*tam), int(8*tam), int(-12*4*tam));
        rect(x+int(20*4*tam), y+int(24*4*tam), int(4*tam), int(-4*tam));
        rect(x+int(18*4*tam), y+int(23*4*tam), int(11*4*tam), int(-4*tam));
        rect(x+int(18*4*tam), y+int(22*4*tam), int(10*4*tam), int(-4*tam));

        // Neck
        rect(x+int(18*4*tam), y+int(21*4*tam), int(12*4*tam), int(-4*tam));

        // Robe hat
        rect(x+int(28*4*tam), y+int(20*4*tam), int(8*tam), int(-4*tam));
        rect(x+int(29*4*tam), y+int(19*4*tam), int(8*tam), int(-4*tam));
        rect(x+int(30*4*tam), y+int(18*4*tam), int(8*tam), int(-6*4*tam));
        rect(x+int(28*4*tam), y+int(12*4*tam), int(4*tam), int(-5*4*tam));
        rect(x+int(26*4*tam), y+int(8*4*tam), int(8*tam), int(-4*tam));
        rect(x+int(19*4*tam), y+int(7*4*tam), int(7*4*tam), int(-8*tam));
        rect(x+int(19*4*tam), y+int(7*4*tam), int(8*tam), int(4*tam));
        rect(x+int(17*4*tam), y+int(8*4*tam), int(12*tam), int(4*tam));
        rect(x+int(17*4*tam), y+int(8*4*tam), int(4*tam), int(12*tam));
        rect(x+int(15*4*tam), y+int(10*4*tam), int(12*tam), int(4*tam));
        rect(x+int(15*4*tam), y+int(10*4*tam), int(4*tam), int(8*tam));
        rect(x+int(14*4*tam), y+int(12*4*tam), int(4*tam), int(7*4*tam));
        rect(x+int(15*4*tam), y+int(19*4*tam), int(4*tam), int(4*tam));
        rect(x+int(16*4*tam), y+int(20*4*tam), int(8*tam), int(4*tam));

        endShape();

        fill(#EC7AF5); // Details
        beginShape();
        rect(x+int(1*4*tam), y+int(19*4*tam), int(5*4*tam), int(2*4*tam));
        rect(x+int(1*4*tam), y+int(19*4*tam), int(2*4*tam), int(-3*4*tam));
        rect(x+int(16*4*tam), y+int(12*4*tam),int(5*4*tam), int(5*4*tam));
        rect(x+int(26*4*tam), y+int(12*4*tam), int(3*4*tam), int(5*4*tam));
        endShape();

        fill(#290050);
        rect(x+int(16*4*tam), y+int(11*4*tam), int(4*tam), int(4*tam));
        rect(x+int(21*4*tam), y+int(7*4*tam), int(4*tam), int(4*tam));
        // scale(-1, 1);

    }
}