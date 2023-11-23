class Minigame3 {

    Emblem player;

    boolean completed = false;
    boolean moving = false;
    boolean started = false;

    int time = 0;
    int timePassed = 0;
    int points = 0;

    ArrayList<String> letters = new ArrayList<String>();
    ArrayList<String> userLetters = new ArrayList<String>();
    String userLettersString = "";

    public Minigame3(Emblem player) {
        this.player = player;
        player.setX(325);
        player.setY(575);
        letters.add("UP");
        letters.add("DOWN");
        letters.add("UP");
        letters.add("DOWN");
        letters.add("LEFT");
        letters.add("RIGHT");
        letters.add("LEFT");
        letters.add("RIGHT");
        letters.add("SHIFT");
        letters.add("CONTROL");
    }

    public int draw(int level) {
        background(255);
        timePassed = (millis() - time) / 1000;

        textSize(32);
        if (letters.size() > 0) {
            text(letters.get(0), width / 2, height / 2);
        } else {

            return level + 1;
        }

        if(keyPressed) {
            keyPressed();
        }

        return level;
    }

    void keyPressed() {
        if (keyCodeToString(keyCode) == letters.get(0)) {
            points++;
            letters.remove(0);
        }
    }

    String keyCodeToString(int code) {
        switch (code) {
            case UP:
                return "UP";
            case DOWN:
                return "DOWN";
            case LEFT:
                return "LEFT";
            case RIGHT:
                return "RIGHT";
            case SHIFT:
                return "SHIFT";
            case CONTROL:
                return "CONTROL";
            default:
                return "";
        }
    }
}
