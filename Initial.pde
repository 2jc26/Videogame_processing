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
    
    public int draw(int level) {
        if (cont == 1) {
            pej.setX(545);
            pej.setY(height - 35);
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
            int dirX=0;
            int dirY=0;
            if (moveUpLeft) {
                dirX = -1;
                dirY = -1;
            } else if (moveUpRight) {
                dirX = 1;
                dirY = -1;
            } else if (moveDownLeft) {
                dirX = -1;
                dirY = 1;
            } else if (moveDownRight) {
                dirX = 1;
                dirY = 1;
            } else if (moveUp) {
                dirY = -1;
            } else if (moveDown) {
                dirY = 1;
            } else if (moveLeft) {
                dirX = -1;
            } else if (moveRight) {
                dirX = 1;
            }
            pej.moveSpecial(dirX, dirY, 740, height-35, 347, 50);
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
    
    
    private int fight(int level) {
        
        if ((pej.getX() < 650) && ((pej.getX() > 450)) && (pej.getY() < 300)) {
            cont = 1;
            return level + 1;
        }
        else
            return level;
    }
}