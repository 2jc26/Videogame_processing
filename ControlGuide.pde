class ControlGuide {

    PImage WKey;
    PImage AKey;
    PImage SKey;
    PImage DKey;
    PImage QKey;
    PImage EKey;
    PImage ZKey;
    PImage XKey;
    PImage SPACEKey;

    public ControlGuide() {
        WKey = loadImage("./images/W.png");
        AKey = loadImage("./images/A.png");
        SKey = loadImage("./images/S.png");
        DKey = loadImage("./images/D.png");
        QKey = loadImage("./images/Q.png");
        EKey = loadImage("./images/E.png");
        ZKey = loadImage("./images/Z.png");
        XKey = loadImage("./images/X.png");
        SPACEKey = loadImage("./images/SPACE.png");
    }


    void draw() {
        background(255);
        // draw the control guide
        fill(0);
        image(WKey, 200, 100, 50, 50);
        image(AKey, 200, 200, 50, 50);
        image(SKey, 200, 300, 50, 50);
        image(DKey, 200, 400, 50, 50);
        image(QKey, 600, 100, 50, 50);
        image(EKey, 600, 200, 50, 50);
        image(ZKey, 600, 300, 50, 50);
        image(XKey, 600, 400, 50, 50);
        image(SPACEKey, 200, 500, 50, 50);

    }

    void drawKey(int x) {

        if (x == 0) {
            // draw the W key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
        if (x == 100) {
            // draw the A key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
        if (x == 200) {
            // draw the S key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
        if (x == 300) {
            // draw the D key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
    }

}