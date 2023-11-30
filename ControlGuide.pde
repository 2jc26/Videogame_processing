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
    PImage Background;

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
        Background = loadImage("./images/Background.png");
    }


    void draw() {
        image(Background, 0, 0);
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

}