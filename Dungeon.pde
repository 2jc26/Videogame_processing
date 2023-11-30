import java.util.HashMap;

class Dungeon {

    Fighter pej;

    color clothesColor;
    color hairColor;
    color skinColor;

    PImage Dungeon1;
    PImage Dungeon2;
    PImage Dungeon3;
    PImage Dungeon4;

    private HashMap<Integer, Integer> dungeons = new HashMap<Integer, Integer>();
    private int squareSize = 70;
    private int cont = 1;
    private int side;
    private float doorX;
    private float doorY;
    private boolean moveUp = false;
    private boolean moveDown = false;
    private boolean moveLeft = false;
    private boolean moveRight = false;
    private boolean moveUpLeft = false;
    private boolean moveUpRight = false;
    private boolean moveDownLeft = false;
    private boolean moveDownRight = false;


    public Dungeon(Fighter pej, color clothesColor, color hairColor, color skinColor) {
        this.pej = pej;
        this.clothesColor = clothesColor;
        this.hairColor = hairColor;
        this.skinColor = skinColor;
        dungeons.put(0, 1);
        dungeons.put(2, 2);
        dungeons.put(6, 3);
        dungeons.put(12, 4);
        dungeons.put(14, 5);
        dungeons.put(16, 6);
        dungeons.put(18, 7);

        Dungeon1 = loadImage("./images/Dungeon1.png");
        Dungeon2 = loadImage("./images/Dungeon2.png");
        Dungeon3 = loadImage("./images/Dungeon3.png");
        Dungeon4 = loadImage("./images/Dungeon4.png");
    }

    public int draw (int level) {
        drawLevel(dungeons.get(level));
        pej.idleFront(hairColor, clothesColor, skinColor);

        int newLevel = collision(level);

        if(newLevel != level) {
            return newLevel;
        }
        else
            return level;
    }

    private void drawLevel(int level) {
        switch (level) {
            case 1:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon1, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 2:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon1, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 3:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon2, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 4:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon2, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 5:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon3, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 6:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon3, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 7:
                if (cont == 1) {
                    pej.setX(width/2);
                    pej.setY(height-40);
                    cont += 1;
                }
                movement();
                image(Dungeon4, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            default:
                movement();
                background(255);
                break;
        }
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
    int minX = 45;
    int minY = 50;
    int maxX = width - 42;  // Assuming pej has a method getWidth() to get its width
    int maxY = height - 35;  // Assuming pej has a method getHeight() to get its height

    return x >= minX && x <= maxX && y >= minY && y <= maxY;
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


    private int collision(int level) {

        if ((pej.getX() > doorX) && (pej.getX() < doorX + squareSize) && (pej.getY() < doorY + squareSize)) {
            cont = 1;
            return level + 1;
        }
        else
            return level;
    }
}