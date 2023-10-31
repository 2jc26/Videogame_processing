import java.util.HashMap;

class Minigame1 {
    
    Emblem emblem;

    ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

    // sectores = new HashMap<String, int[]>();

    int limit = 560;
    int inicial = 200;

    public Minigame1(Emblem emblem, int cantidad) {
        this.emblem = emblem;

        for (int i = 0; i < cantidad; i++) {
            fireballs.add(new Fireball(200+50*i+1, 250, 1, 0.5));
        }
    }

    public void draw() {
        background(255);
        arena(limit);
        // emblem.draw();

        for (int i = 0; i < fireballs.size(); i++) {
            fireballs.get(i).draw();
            fireballs.get(i).move(inicial,limit+inicial,inicial,limit+inicial);
            println(fireballs.get(i).getTamXMax() + " , " + fireballs.get(i).getTamYMax());

        }

    }

    public void arena(int tam) {
        stroke(0);
        strokeWeight(5);
        noFill();
        rect (190, 190, tam, tam);
    }


}