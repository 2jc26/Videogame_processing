import java.util.HashMap;

class Dungeon {

    Fighter pej;

    color clothesColor;
    color hairColor;
    color skinColor;

    private HashMap<Integer, Integer> dungeons = new HashMap<Integer, Integer>();
    private int squareSize = 50;
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
        dungeons.put(4, 2);
        dungeons.put(5, 3);
        dungeons.put(8, 4);
        dungeons.put(11, 5);
        dungeons.put(13, 6);
        dungeons.put(15, 7);
        dungeons.put(16, 8);
    }

    public int draw (int level) {
        background(255);
        drawLevel(dungeons.get(level));
        pej.idleFront(hairColor, clothesColor, skinColor);
        movement();

        int newLevel = collision(level);

        if(newLevel != level) {
            cont +=1;
            return newLevel;
        }
        else
            return level;
    }

    private void drawLevel(int level) {
        if (cont == 1){
            side = (int) random(4); // 0: top, 1: right, 2: bottom, 3: left
            cont -= 1;

            switch (level) {
                case 1:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 2:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 3:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 4:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 5:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 6:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 7:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                case 8:
                    switch (side) {
                        case 0: // top side
                            doorX = random(width);
                            doorY = 0;
                        break;
                        case 1: // right side
                            doorX = width - squareSize;
                            doorY = random(height);
                        break;
                        case 2: // bottom side
                            doorX = random(width);
                            doorY = height - squareSize;
                        break;
                        case 3: // left side
                            doorX = 0;
                            doorY = random(height);
                        break;
                        default:
                            doorX = 0;
                            doorY = 0;
                    }
                    break;
                default:
                    background(255);
                    break;
            }
        }

        fill(random(255), random(255), random(255));
        rect(doorX, doorY, squareSize, squareSize);
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


    private int collision(int level) {

        if ((pej.getX() > doorX) && (pej.getY() > doorY) && (pej.getX() < doorX + squareSize) && (pej.getY() < doorY + squareSize))
            return level + 1;
        else
            return level;
    }
}