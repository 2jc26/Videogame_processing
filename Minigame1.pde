class Minigame1 {
    
    Emblem emblem;

    ArrayList<Fireball> fireballs = new ArrayList<Fireball>();

    public Minigame1(Emblem emblem, int cantidad) {
        this.emblem = emblem;

        for (int i = 0; i < cantidad; i++) {
            fireballs.add(new Fireball(200+50*i+1, 250, 1, 0.5));
        }
    }

    public void draw() {
        background(255);
        int limit = 530;
        int inicial = 200;
        arena(limit);
        // emblem.draw();

        for (int i = 0; i < fireballs.size(); i++) {
            fireballs.get(i).draw();
            fireballs.get(i).move(inicial,limit+inicial,inicial,limit+inicial);

        }

    }

    public void arena(int tam) {
        stroke(0);
        strokeWeight(5);
        noFill();
        rect (190, 190, tam, tam);
    }


}