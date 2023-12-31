import java.util.HashMap;


class Combat1 {
    
    Emblem emblem;

    boolean lost = false;

    private boolean moveUp = false;
    private boolean moveDown = false;
    private boolean moveLeft = false;
    private boolean moveRight = false;
    private boolean moveUpLeft = false;
    private boolean moveUpRight = false;
    private boolean moveDownLeft = false;
    private boolean moveDownRight = false;

    PImage Fondo;

    ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

    Spear spear = new Spear(700,300,1,0.5,0);

    // Deprecated
    // HashMap<Integer, ArrayList<Integer>> mapTable = new HashMap<Integer, ArrayList<Integer>>();

    ArrayList<Spear> spears = new ArrayList<Spear>();

    private int nivel;
    private int tiempoInicio;
    private int cont = 1;
    private int availableWidth = 500;
    private int separation = 65;
    private int cantidad;
    private Indexer indexer;

    int limit = 560;
    int inicial = 190;
    private int tiempoEspera;

    public Combat1(Emblem emblem, int cantidad, Indexer indexer) {
        this.emblem = emblem;
        this.cantidad = cantidad;
        Fondo = loadImage("combat.png");
        int x = 200;
        int y = 250;
        configFire(availableWidth, separation, x, y, nivel, cantidad, indexer);
        configSpare(availableWidth, separation, x, y, nivel, 7, indexer);
    }

    public void configFire(int availableWidth, int separation, int x, int y, int nivel, int cantidad, Indexer indexer) {
        for (int i = 0; i < cantidad; i++) {   
            fireballs.add(new Fireball(x, y, 1, 0.5, indexer.getIndex()));
            if (x + separation <= availableWidth+inicial) {
                x += separation;
            } else {
                y += separation;
                x = 200;
            }
        }
    } 

    public void configSpare(int availableWidth, int separation, int x, int y, int nivel, int cantidad, Indexer indexer) {
        int multiplier = 1;
        for (int i = 0; i < 7; i++) {
            int xSpare = int(random(50, x));
            spears.add(new Spear(xSpare, y, 4, multiplier*0.5, indexer.getIndex()));
            if (y + separation <= availableWidth+inicial) {
                y += separation;
            } else {
                multiplier *= -1;
                x += separation;
                y = 200;
            }
        }
    }

    public int draw(int level) {
        background(255);
        image(Fondo, 0, 0);
        this.nivel = level;
        if (cont == 1) {
            tiempoInicio = millis();
            cont -= 1;
        }
        if (this.nivel == 4 || this.nivel == 20) {
            tiempoEspera = 30000; // 30000 milisegundos son 30 segundos
        }else if (this.nivel == 9) {
            tiempoEspera = 7000; // 7000 milisegundos son 7 segundos
        }
        movement();
        if (emblem.getVida() > 0) {
            if (nivel == 4 || nivel == 20) {
                fireBallsNivel();
            }
            if (nivel == 9 || nivel == 20) {
                spearsNivel();
            }

            emblem.draw();

            float healtBarWidth = map(emblem.getVida(), 0, emblem.getVidaMax(), 0, limit);

            fill(255, 0, 0);
            rect(inicial-15, inicial+limit+40, limit, 20);

            fill(0, 255, 0);
            rect(inicial-15, inicial+limit+40, healtBarWidth, 20);

            // Cálculo del tiempo transcurrido
            int tiempoActual = millis();
            int tiempoTranscurrido = tiempoActual - tiempoInicio;

            if (tiempoTranscurrido >= tiempoEspera) {
                cont += 1;
                return level + 1; // Aumentar el nivel en 1
            } 
            else {
                return level; // Retornar el nivel sin cambios
            }

        }


        return 22;
    }


    private void fireBallsNivel() {
        for (int i = 0; i < fireballs.size(); i++) {
            fireballs.get(i).draw();
            fireballs.get(i).move(inicial,limit+inicial,inicial,limit+inicial);
            if (fireballs.get(i).collide(emblem.minX(), emblem.minY(), emblem.maxX(), emblem.maxY())) {
                emblem.lostLife();
            }
        }
    }

    private void spearsNivel() {
        for (int i = 0; i < spears.size(); i++) {
            spears.get(i).draw();
            spears.get(i).move(inicial,limit+inicial,inicial,limit+inicial);
            if (spears.get(i).colision(emblem.minX(), emblem.minY(), emblem.maxX(), emblem.maxY())) {
                emblem.lostLife();
            }
            
        }
    }

    private int[] sectorEmblema(int xObj, int yObj, float tamXObj, float tamYObj, float tamXMat, float tamYMat) {
        int numSectorsX = (int) Math.ceil(tamXObj / tamXMat);
        int numSectorsY = (int) Math.ceil(tamYObj / tamYMat);

        int startSectorX = (int) Math.ceil((xObj - inicial) / tamXMat);
        int startSectorY = (int) Math.ceil((yObj - inicial) / tamYMat);

        int[] sectors = new int[numSectorsX * numSectorsY];
        int index = 0;

        for (int y = startSectorY; y < startSectorY + numSectorsY; y++) {
            for (int x = startSectorX; x < startSectorX + numSectorsX; x++) {
                sectors[index] = x + (int(limit / tamXMat) + 1) * y;
                index++;
            }
        }
        return sectors;
    }

    private int setSector(int xObj, int yObj, float tamXObj, float tamYObj) {
        int sectorX = (int) Math.ceil((xObj-inicial)/(tamXObj));
        int sectorY = (int) Math.ceil((yObj-inicial)/(tamYObj));
        int sect = (int) (sectorX + ((limit/tamXObj)+1)*sectorY);
        return sect;
    
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
            if (emblem.minX() > inicial) {
                emblem.setX(emblem.getX() - (1*emblem.getSpeed()));
            }
            if (emblem.minY() > inicial) {
                emblem.setY(emblem.getY() - (1*emblem.getSpeed()));
            }
        }
        else if (moveUpRight) {
            if (emblem.maxX() < limit+inicial) {
                emblem.setX(emblem.getX() + (1*emblem.getSpeed()));
            }
            if (emblem.minY() > inicial) {
                emblem.setY(emblem.getY() - (1*emblem.getSpeed()));
            }
        }
        else if (moveDownLeft) {
            if (emblem.minX() > inicial) {
                emblem.setX(emblem.getX() - (1*emblem.getSpeed()));
            }
            if (emblem.maxY() < limit+inicial) {
                emblem.setY(emblem.getY() + (1*emblem.getSpeed()));
            }
        }
        else if (moveDownRight) {
            if (emblem.maxX() < limit+inicial) {
                emblem.setX(emblem.getX() + (1*emblem.getSpeed()));
            }
            if (emblem.maxY() < limit+inicial) {
                emblem.setY(emblem.getY() + (1*emblem.getSpeed()));
            }
        }
        else if (moveUp) {
            if (emblem.minY() > inicial) {
                emblem.setY(emblem.getY() - (1*emblem.getSpeed()));
            }
        }
        else if (moveDown) {
            if (emblem.maxY() < limit+inicial) {
                emblem.setY(emblem.getY() + (1*emblem.getSpeed()));
            }
        }
        else if (moveLeft) {
            if (emblem.minX() > inicial) {
                emblem.setX(emblem.getX() - (1*emblem.getSpeed()));
            }
        }
        else if (moveRight) {
            if (emblem.maxX() < limit+inicial) {
                emblem.setX(emblem.getX() + (1*emblem.getSpeed()));
            }
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

    void mousePressed() {
        if (mouseButton == LEFT) {
            
        }
    }
}