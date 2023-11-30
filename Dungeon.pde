import java.util.HashMap;

class Dungeon {

    Fighter pej;
    Emblem emblem;

    color clothesColor;
    color hairColor;
    color skinColor;

    PImage Dungeon1;
    PImage Dungeon2;
    PImage Dungeon3;
    PImage Dungeon4;

    private HashMap<Integer, Integer> dungeons = new HashMap<Integer, Integer>();
    private int puntaje;
    private int squareSize = 70;
    private int cont = 1;
    private int actual = -5;
    private int side;
    private int cantidadConsumibles = 7;
    private Bonification[] bonifications = new Bonification[cantidadConsumibles];
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


    public Dungeon(Fighter pej, color clothesColor, color hairColor, color skinColor, Emblem emblem) {
        this.emblem = emblem;
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

    public int draw (int level, int puntaje) {
        this.puntaje = puntaje;
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
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movement();
                image(Dungeon1, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 2:
                if (cont == 1) {
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movement();
                image(Dungeon1, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 3:
                if (cont == 1) {
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movement();
                image(Dungeon2, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 4:
                if (cont == 1) {
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movement();
                image(Dungeon2, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 5:
                if (cont == 1) {
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movement();
                image(Dungeon3, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 6:
                if (cont == 1) {
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movement();
                image(Dungeon3, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            case 7:
                if (cont == 1) {
                    pej.setX(545);
                    pej.setY(height-35);
                    cont += 1;
                }
                movementFinal();
                image(Dungeon4, 0, 0);
                doorX = 491;
                doorY = 0;
                break;
            default:
                movement();
                background(255);
                break;
        }
        dibujoConsumibles(level);
    }

    private void dibujoConsumibles(int level) {
        if (actual != 7) {
            int x = int(random(0, width-80));
            int y = int(random(0, height-80));
            for (int i = 0; i < cantidadConsumibles; i++) {
                Bonification bonification;
                if (actual != level) {
                    bonification = new Bonification();
                    bonification.setPos(x,y);
                    bonifications[i] = bonification;
                    x = int(random(0, width-80));
                    y = int(random(0, height-80));
                }
                bonification = bonifications[i];
                bonification.draw();
                if (bonification.colision(pej.minX(), pej.minY(), pej.maxX(), pej.maxY())){
                    switch (bonification.getTipo()) {
                        case 1:
                            emblem.setVida(emblem.getVida() + bonification.getCantidad());
                            break;
                        case 2:
                            emblem.setSpeed(emblem.getSpeed() + bonification.getCantidad());
                            pej.setSpeed(pej.getSpeed() + bonification.getCantidad());
                            break;
                        case 3:
                            emblem.setVidaMax(emblem.getVidaMax() + bonification.getCantidad());
                            emblem.setVida(emblem.getVida() + bonification.getCantidad());
                            break;
                        case 4:
                            emblem.setVida(emblem.getVida() + bonification.getCantidad());
                            break;
                        case 5:
                            emblem.setSpeed(emblem.getSpeed() + bonification.getCantidad());
                            pej.setSpeed(pej.getSpeed() + bonification.getCantidad());
                            break;
                    }
                }
            }
            actual = level;
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
                    pej.setX(pej.getX() - (1*pej.getSpeed()));
                    pej.setY(pej.getY() - (1*pej.getSpeed()));
                }
            } else if (moveUpRight) {
                if (isValidMove(pej.getX() + 1, pej.getY() - 1)) {
                    pej.setX(pej.getX() + (1*pej.getSpeed()));
                    pej.setY(pej.getY() - (1*pej.getSpeed()));
                }
            } else if (moveDownLeft) {
                if (isValidMove(pej.getX() - 1, pej.getY() + 1)) {
                    pej.setX(pej.getX() - (1*pej.getSpeed()));
                    pej.setY(pej.getY() + (1*pej.getSpeed()));
                }
            } else if (moveDownRight) {
                if (isValidMove(pej.getX() + 1, pej.getY() + 1)) {
                    pej.setX(pej.getX() + (1*pej.getSpeed()));
                    pej.setY(pej.getY() + (1*pej.getSpeed()));
                }
            } else if (moveUp) {
                if (isValidMove(pej.getX(), pej.getY() - 1)) {
                    pej.setY(pej.getY() - (1*pej.getSpeed()));
                }
            } else if (moveDown) {
                if (isValidMove(pej.getX(), pej.getY() + 1)) {
                    pej.setY(pej.getY() + (1*pej.getSpeed()));
                }
            } else if (moveLeft) {
                if (isValidMove(pej.getX() - 1, pej.getY())) {
                    pej.setX(pej.getX() - (1*pej.getSpeed()));
                }
            } else if (moveRight) {
                if (isValidMove(pej.getX() + 1, pej.getY())) {
                    pej.setX(pej.getX() + (1*pej.getSpeed()));
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

        private void movementFinal() {
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
                if (isValidMoveFinal(pej.getX() - 1, pej.getY() - 1)) {
                    pej.setX(pej.getX() - (1*pej.getSpeed()));
                    pej.setY(pej.getY() - (1*pej.getSpeed()));
                }
            } else if (moveUpRight) {
                if (isValidMoveFinal(pej.getX() + 1, pej.getY() - 1)) {
                    pej.setX(pej.getX() + (1*pej.getSpeed()));
                    pej.setY(pej.getY() - (1*pej.getSpeed()));
                }
            } else if (moveDownLeft) {
                if (isValidMoveFinal(pej.getX() - 1, pej.getY() + 1)) {
                    pej.setX(pej.getX() - (1*pej.getSpeed()));
                    pej.setY(pej.getY() + (1*pej.getSpeed()));
                }
            } else if (moveDownRight) {
                if (isValidMoveFinal(pej.getX() + 1, pej.getY() + 1)) {
                    pej.setX(pej.getX() + (1*pej.getSpeed()));
                    pej.setY(pej.getY() + (1*pej.getSpeed()));
                }
            } else if (moveUp) {
                if (isValidMoveFinal(pej.getX(), pej.getY() - 1)) {
                    pej.setY(pej.getY() - (1*pej.getSpeed()));
                }
            } else if (moveDown) {
                if (isValidMoveFinal(pej.getX(), pej.getY() + 1)) {
                    pej.setY(pej.getY() + (1*pej.getSpeed()));
                }
            } else if (moveLeft) {
                if (isValidMoveFinal(pej.getX() - 1, pej.getY())) {
                    pej.setX(pej.getX() - (1*pej.getSpeed()));
                }
            } else if (moveRight) {
                if (isValidMoveFinal(pej.getX() + 1, pej.getY())) {
                    pej.setX(pej.getX() + (1*pej.getSpeed()));
                }
            }
        }
    }

    private boolean isValidMoveFinal(int x, int y) {
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


    private int collision(int level) {

        if ((pej.getX() > doorX) && (pej.getX() < doorX + squareSize) && (pej.getY() < doorY + squareSize)) {
            cont = 1;
            return level + 1;
        }
        else
            return level;
    }
}