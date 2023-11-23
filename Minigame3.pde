class Minigame3 {

    Emblem player;

    boolean completed = false;
    boolean moving = false;
    boolean started = false;

    int time = 0;
    int timePassed = 0;
    int points = 0;


    ArrayList<Integer> letters = new ArrayList<Integer>();
    ArrayList<Integer> userLetters = new ArrayList<Integer>();

    public Minigame3(Emblem player) {
        this.player = player;
        player.setX(325);
        player.setY(575);
    }

    public int draw(int level) {
        background(255);
        player.draw();
        timePassed = (millis() - time)/1000;

        textSize(32);
        text("UP DOWN UP DOWN LEFT RIGHT LEFT RIGHT SHIFT CONTROL " , width/2, (height/2)-100);
        for (int i = 0; i < letters.size(); i++) {
            text(letters.get(i), width/2, (height/2) + (i*50));
        }

        if (points > 5) {
            return screen++;
        }

        return screen;
    }


    void keyPressed() {
        if (key == ' ') {
            for (int i = 0; i < letters.size(); i++) {
                if (letters.get(i) == userLetters.get(i)) {
                    points++;
                }
                else {
                    userLetters = new ArrayList<>();
                    break;
                }
            }
        }
        else {
            letters.add(keyCode);
        }
        
    }

}