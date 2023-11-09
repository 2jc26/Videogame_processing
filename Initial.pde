class Initial {

    Fighter pej;
    Mage mage;
    Emblem emblem;

    color clothesColor;
    color hairColor;
    color skinColor;

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
    }

    public int draw (int x) {

        background(255);
        pej.idleFront(hairColor, clothesColor, skinColor);
        mage.idleFront();
        movement();
        return fight();
    }

    private void movement() {

        if(keyPressed) {
            keyPressed();
        }
        else {
            keyReleased();
        }

        if (!keyPressed)  {
            moveUp = false;
            moveDown = false;
            moveLeft = false;
            moveRight = false;
            moveUpLeft = false;
            moveUpRight = false;
            moveDownLeft = false;
            moveDownRight = false;
        }
        else if (moveUpLeft) {
            pej.setX(pej.getX() - 1);
            pej.setY(pej.getY() - 1);
        }
        else if (moveUpRight) {
            pej.setX(pej.getX() + 1);
            pej.setY(pej.getY() - 1);
        }
        else if (moveDownLeft) {
            pej.setX(pej.getX() - 1);
            pej.setY(pej.getY() + 1);
        }
        else if (moveDownRight) {
            pej.setX(pej.getX() + 1);
            pej.setY(pej.getY() + 1);
        }
        else if (moveUp) {
            pej.setY(pej.getY() - 1);
        }
        else if (moveDown) {
            pej.setY(pej.getY() + 1);
        }
        else if (moveLeft) {
            pej.setX(pej.getX() - 1);
        }
        else if (moveRight) {
            pej.setX(pej.getX() + 1);
        }
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


    private int fight() {

        if ((pej.getX() < 150) && (pej.getY() < 150))
            return 1;
        else
            return 0;
    }
}