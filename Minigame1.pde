import java.util.HashMap;


class Minigame1 {
    
    Emblem emblem;

    Indexer indexer;

    boolean lost = false;

    ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

    HashMap<Integer, ArrayList<Integer>> mapTable = new HashMap<Integer, ArrayList<Integer>>();

    int limit = 560;
    int inicial = 200;

    public Minigame1(Emblem emblem, int cantidad, Indexer indexer) {
        this.emblem = emblem;

        int availableWidth = 500;
        int separation = 65;
        int x = 200;
        int y = 250;

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

    public void draw() {
        if (emblem.getVida() > 0) {
            background(255);
            arena(limit);

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
                        // if (listObjSec.size() > 0) {
                        //     for (int j = 0; j < listObjSec.size(); j++) {
                        //         if (fireballs.get(i).collide(fireballs.get(listObjSec.get(j)).getX(), fireballs.get(listObjSec.get(j)).getY(), fireballs.get(listObjSec.get(j)).getTamXMax(), fireballs.get(listObjSec.get(j)).getTamYMax())) {
                        //             fireballs.get(i).bounce();
                        //         }
                        //     }
                        // }
                        listObjSec.add(fireballs.get(i).getIndexValue());
                    }
                }


            }
            emblem.draw();

            int[] sectorEmblema = sectorEmblema(emblem.minXVal(), emblem.minYVal(), emblem.getTamXMax(), emblem.getTamYMax(), fireballs.get(0).getTamXMax(), fireballs.get(0).getTamYMax());
            String g = "";
            for (int i = 0; i < sectorEmblema.length; i++) {
                if (mapTable.get(sectorEmblema[i]) != null) {
                    for (int j = 0; j < mapTable.get(sectorEmblema[i]).size(); j++) {
                        if (emblem.collide(fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getX(), fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getY(), fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getTamXMax(), fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).getTamYMax())) {                   
                            fireballs.get(mapTable.get(sectorEmblema[i]).get(j)).bounce();
                        }
                    }
                }
            }

            float healtBarWidth = map(emblem.getVida(), 0, emblem.getVidaMax(), 0, limit);

            fill(255, 0, 0);
            rect(inicial-15, inicial+limit+40, limit, 20);

            fill(0, 255, 0);
            rect(inicial-15, inicial+limit+40, healtBarWidth, 20);
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
        rect (190, 190, tam, tam);
    }


}