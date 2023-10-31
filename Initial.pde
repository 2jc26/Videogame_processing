class Initial {

    Fighter pej;
    Mage mage;
    Emblem emblem;
    Fireball fireball;

    color clothesColor;
    color hairColor;
    color skinColor;

    private boolean moveUp = false;
    private boolean moveDown = false;
    private boolean moveLeft = false;
    private boolean moveRight = false;


    public Initial(Fighter pej, Mage mage, Emblem emblem, Fireball fireball, color clothesColor, color hairColor, color skinColor) {
        this.pej = pej;
        this.mage = mage;
        this.emblem = emblem;
        this.fireball = fireball;
        this.clothesColor = clothesColor;
        this.hairColor = hairColor;
        this.skinColor = skinColor;
    }

    public void draw () {

        background(255);
        pej.idleFront(hairColor, clothesColor, skinColor);
        mage.idleFront();
        emblem.draw();
        fireball.draw();
        movement();
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
        }
        else if (moveUp && moveLeft) {
            pej.setX(pej.getX() - 1);
            pej.setY(pej.getY() - 1);
        }
        else if (moveUp && moveRight) {
            pej.setX(pej.getX() + 1);
            pej.setY(pej.getY() - 1);
        }
        else if (moveDown && moveLeft) {
            pej.setX(pej.getX() - 1);
            pej.setY(pej.getY() + 1);
        }
        else if (moveDown && moveRight) {
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
    }
}