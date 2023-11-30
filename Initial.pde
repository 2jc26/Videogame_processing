class Initial {

    Fighter pej;
    Mage mage;
    Emblem emblem;

    PImage background;

    color clothesColor;
    color hairColor;
    color skinColor;

    private int cont = 1;

    private boolean moveUp = false;
    private boolean moveDown = false;
    private boolean moveLeft = false;
    private boolean moveRight = false;
    private boolean moveUpLeft = false;
    private boolean moveUpRight = false;
    private boolean moveDownLeft = false;
    private boolean moveDownRight = false;


    public Initial(Fighter pej, Mage mage, Emblem emblem, color clothesColor, color hairColor, color skinColor) {
        this.pej = pej;
        this.mage = mage;
        this.emblem = emblem;
        this.clothesColor = clothesColor;
        this.hairColor = hairColor;
        this.skinColor = skinColor;

        background = loadImage("images/Initial.png");
    }

    public int draw (int level) {
        if (cont == 1) {
            pej.setX(545);
            pej.setY(height-35);
            cont += 1;
        }

        image(background, 0, 0);
        pej.idleFront(hairColor, clothesColor, skinColor);
        mage.idleFront();
        movement();
        return fight(level);
    }

    private void movement() {
        if (keyPressed) {
            keyPressed();
        } else {
            keyReleased();
        }

        if (!keyPressed) {
            moveUp = false;
            moveDown = false;
            moveLeft = false;
            moveRight = false;
            moveUpLeft = false;
            moveUpRight = false;
            moveDownLeft = false;
            moveDownRight = false;
        } else {
            if (moveUpLeft) {
                if (isValidMove(pej.getX() - 1, pej.getY() - 1)) {
                    pej.setX(pej.getX() - 1);
                    pej.setY(pej.getY() - 1);
                }
            } else if (moveUpRight) {
                if (isValidMove(pej.getX() + 1, pej.getY() - 1)) {
                    pej.setX(pej.getX() + 1);
                    pej.setY(pej.getY() - 1);
                }
            } else if (moveDownLeft) {
                if (isValidMove(pej.getX() - 1, pej.getY() + 1)) {
                    pej.setX(pej.getX() - 1);
                    pej.setY(pej.getY() + 1);
                }
            } else if (moveDownRight) {
                if (isValidMove(pej.getX() + 1, pej.getY() + 1)) {
                    pej.setX(pej.getX() + 1);
                    pej.setY(pej.getY() + 1);
                }
            } else if (moveUp) {
                if (isValidMove(pej.getX(), pej.getY() - 1)) {
                    pej.setY(pej.getY() - 1);
                }
            } else if (moveDown) {
                if (isValidMove(pej.getX(), pej.getY() + 1)) {
                    pej.setY(pej.getY() + 1);
                }
            } else if (moveLeft) {
                if (isValidMove(pej.getX() - 1, pej.getY())) {
                    pej.setX(pej.getX() - 1);
                }
            } else if (moveRight) {
                if (isValidMove(pej.getX() + 1, pej.getY())) {
                    pej.setX(pej.getX() + 1);
                }
            }
        }
    }

    private boolean isValidMove(int x, int y) {
        // Adjust these values based on your screen dimensions
        int minX = 347;
        int minY = 50;
        int maxX = 740;  
        int maxY = height - 35;

        if (y >= 490) {
            minX = 416;
            maxX = 674;
        }
        if (y >= 550) {
            minX = 480;
            maxX = 611;
        }
        if (y >= 680) {
            minX = 540;
            maxX = 548;
        }
        if (x <= 480 || x >= 611) {
            minY = 300;
        }

        return (x >= minX && x <= maxX && y >= minY && y <= maxY);
    }

    void keyPressed() {
        if (key == 'w')
            moveUp = true;
        if (key == 's')
            moveDown = true;
        if (key == 'a')
            moveLeft = true;
        if (key == 'd')
            moveRight = true;
        if (key == 'q')
            moveUpLeft = true;
        if (key == 'e')
            moveUpRight = true;
        if (key == 'z')
            moveDownLeft = true;
        if (key == 'x')
            moveDownRight = true;
    }

    void keyReleased() {
        if (key == 'w')
            moveUp = false;
        if (key == 's')
            moveDown = false;
        if (key == 'a')
            moveLeft = false;
        if (key == 'd')
            moveRight = false;
        if (key == 'q')
            moveUpLeft = false;
        if (key == 'e')
            moveUpRight = false;
        if (key == 'z')
            moveDownLeft = false;
        if (key == 'x')
            moveDownRight = false;
    }


    private int fight(int level) {

        if ((pej.getX() < 650) && ((pej.getX() > 450)) && (pej.getY() < 300)) {
            cont = 1;
            return level+1;
        }
        else
            return level;
    }
}