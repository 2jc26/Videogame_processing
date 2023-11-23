import java.util.HashMap;


class Combat1 {
    
    Emblem emblem;

    Indexer indexer;

    boolean lost = false;

    private boolean moveUp = false;
    private boolean moveDown = false;
    private boolean moveLeft = false;
    private boolean moveRight = false;
    private boolean moveUpLeft = false;
    private boolean moveUpRight = false;
    private boolean moveDownLeft = false;
    private boolean moveDownRight = false;

    ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

    Spear spear = new Spear(700,300,1,0.5,0);

    HashMap<Integer, ArrayList<Integer>> mapTable = new HashMap<Integer, ArrayList<Integer>>();

    ArrayList<Spear> spears = new ArrayList<Spear>();

    private int nivel;
    private int tiempoInicio;
    private int cont = 1;

    int limit = 560;
    int inicial = 190;

    public Combat1(Emblem emblem, int cantidad, Indexer indexer, int nivel) {
        this.emblem = emblem;

        int availableWidth = 500;
        int separation = 65;
        int x = 200;
        int y = 250;
        this.nivel = nivel;

        if (this.nivel == 1) {
            configFire(availableWidth, separation, x, y, nivel, cantidad, indexer);
        } else if (this.nivel == 4 || this.nivel == 9 || this.nivel == 15 || this.nivel == 23) {
            configSpare(availableWidth, separation, x, y, nivel, 7, indexer);
        } else if (this.nivel == 3) {
            configFire(availableWidth, separation, x, y, nivel, cantidad, indexer);
            configSpare(availableWidth, separation, x, y, nivel, 7, indexer);
        }

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
        this.nivel = level;
        if (cont == 1) {
            tiempoInicio = millis();
            cont -= 1;
        }
        movement();
        if (emblem.getVida() > 0) {
            background(255);
            arena(limit);
            if (nivel == 1 || nivel == 3) {
                fireBallsNivel();
            } else if (nivel == 4 || nivel == 3) {
                spearsNivel();
            }

            emblem.draw();

            int[] sectorEmblema = new int[0];
            if (nivel == 1 || nivel == 3) {
                sectorEmblema = sectorEmblema(emblem.minX(), emblem.minY(), emblem.getTamXMax(), emblem.getTamYMax(), fireballs.get(0).getTamXMax(), fireballs.get(0).getTamYMax());
            } 
            // TODO implementar colisiones para nivel 2 y 3
            // else if (nivel == 2 || nivel == 3) {
            //     sectorEmblema = sectorEmblema(emblem.minX(), emblem.minY(), emblem.getTamXMax(), emblem.getTamYMax(), spears.get(0).getTamXMax(), spears.get(0).getTamYMax());
            // }

            String g = "";
            for (int i = 0; i < sectorEmblema.length; i++) {
                if (mapTable.get(sectorEmblema[i]) != null) {
                    for (int j = 0; j < mapTable.get(sectorEmblema[i]).size(); j++) {
                        if (nivel == 1 || nivel == 3) {
                            if (emblem.collide(fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getX(), fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getY(), fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getTamXMax(), fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getTamYMax())) {                   
                                fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).bounce();
                            }
                        } 
                        // TODO implementar colisiones para nivel 2 y 3
                        // else if (nivel == 2 || nivel == 3) {
                        //     if (emblem.collide(spears.get(mapTable.get(sectorEmblema[i]).get(j)).getX(), spears.get(mapTable.get(sectorEmblema[i]).get(j)).getY(), spears.get(mapTable.get(sectorEmblema[i]).get(j)).getTamXMax(), spears.get(mapTable.get(sectorEmblema[i]).get(j)).getTamYMax())) {                   
                        //         spears.get(mapTable.get(sectorEmblema[i]).get(j)).bounce();
                        //     }
                        // }
                    }
                }
            }

            float healtBarWidth = map(emblem.getVida(), 0, emblem.getVidaMax(), 0, limit);

            fill(255, 0, 0);
            rect(inicial-15, inicial+limit+40, limit, 20);

            fill(0, 255, 0);
            rect(inicial-15, inicial+limit+40, healtBarWidth, 20);

            // Cálculo del tiempo transcurrido
            int tiempoActual = millis();
            int tiempoTranscurrido = tiempoActual - tiempoInicio;
            int tiempoEspera = 7000; // 7000 milisegundos son 5 segundos

            if (tiempoTranscurrido >= tiempoEspera) {
                cont += 1;
                return level + 1; // Aumentar el nivel en 1
            } 
            else {
                return level; // Retornar el nivel sin cambios
            }

        }


        return level;
    }


    private void fireBallsNivel() {
        for (int i = 0; i < fireballs.size(); i++) {
            fireballs.get(i).draw();
            int sector = setSector(fireballs.get(i).getX(), fireballs.get(i).getY(), fireballs.get(i).getTamXMax(), fireballs.get(i).getTamYMax());
            ArrayList<Integer> listObjSec = mapTable.get(sector);
            if (listObjSec != null) {
                if (listObjSec.contains(fireballs.get(i).getIndexValue())) {
                    listObjSec.remove(Integer.valueOf(fireballs.get(i).getIndexValue()));
                }
            }
            fireballs.get(i).move(inicial,limit+inicial,inicial,limit+inicial);
            sector = setSector(fireballs.get(i).getX(), fireballs.get(i).getY(), fireballs.get(i).getTamXMax(), fireballs.get(i).getTamYMax());
            listObjSec = mapTable.get(sector);
            if (listObjSec == null) {
                listObjSec = new ArrayList<Integer>();
                listObjSec.add(fireballs.get(i).getIndexValue());
                mapTable.put(sector, listObjSec);
            } else {
                if (!listObjSec.contains(fireballs.get(i).getIndexValue())) {
                    listObjSec.add(fireballs.get(i).getIndexValue());
                }
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

    public void arena(int tam) {
        stroke(0);
        strokeWeight(5);
        noFill();
        rect (inicial, inicial, tam, tam);
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
                emblem.setX(emblem.getX() - 1);
            }
            if (emblem.minY() > inicial) {
                emblem.setY(emblem.getY() - 1);
            }
        }
        else if (moveUpRight) {
            if (emblem.maxX() < limit+inicial) {
                emblem.setX(emblem.getX() + 1);
            }
            if (emblem.minY() > inicial) {
                emblem.setY(emblem.getY() - 1);
            }
        }
        else if (moveDownLeft) {
            if (emblem.minX() > inicial) {
                emblem.setX(emblem.getX() - 1);
            }
            if (emblem.maxY() < limit+inicial) {
                emblem.setY(emblem.getY() + 1);
            }
        }
        else if (moveDownRight) {
            if (emblem.maxX() < limit+inicial) {
                emblem.setX(emblem.getX() + 1);
            }
            if (emblem.maxY() < limit+inicial) {
                emblem.setY(emblem.getY() + 1);
            }
        }
        else if (moveUp) {
            if (emblem.minY() > inicial) {
                emblem.setY(emblem.getY() - 1);
            }
        }
        else if (moveDown) {
            if (emblem.maxY() < limit+inicial) {
                emblem.setY(emblem.getY() + 1);
            }
        }
        else if (moveLeft) {
            if (emblem.minX() > inicial) {
                emblem.setX(emblem.getX() - 1);
            }
        }
        else if (moveRight) {
            if (emblem.maxX() < limit+inicial) {
                emblem.setX(emblem.getX() + 1);
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