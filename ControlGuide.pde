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
        WKey = loadImage("W.png");
        AKey = loadImage("A.png");
        SKey = loadImage("S.png");
        DKey = loadImage("D.png");
        QKey = loadImage("Q.png");
        EKey = loadImage("E.png");
        ZKey = loadImage("Z.png");
        XKey = loadImage("X.png");
        SPACEKey = loadImage("SPACE.png");
        Background = loadImage("Background.png");
    }


    void draw() {
        image(Background, 0, 0);
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