class Minigame3 {

    PImage background;

    boolean completed = false;
    boolean moving = false;
    boolean started = false;

    int cont = 0;
    int time;
    int timePassed = 0;
    int points = 0;

    ArrayList<String> letters = new ArrayList<String>();
    ArrayList<String> userLetters = new ArrayList<String>();
    String userLettersString = "";

    public Minigame3() {

        background = loadImage("./images/Background.png");
        letters.add("UP");
        letters.add("DOWN");
        letters.add("UP");
        letters.add("DOWN");
        letters.add("LEFT");
        letters.add("RIGHT");
        letters.add("LEFT");
        letters.add("RIGHT");
        letters.add("CONTROL");
        letters.add("SHIFT");
        letters.add("CONTROL");
        letters.add("SHIFT");
        letters.add("UP");
        letters.add("SHIFT");
        letters.add("DOWN");
        letters.add("CONTROL");
        letters.add("UP");
        letters.add("CONTROL");
        letters.add("DOWN");
        letters.add("SHIFT");
        letters.add("LEFT");
        letters.add("SHIFT");
        letters.add("RIGHT");
        letters.add("CONTROL");
        letters.add("LEFT");
        letters.add("CONTROL");
        letters.add("SHIFT");
        letters.add("RIGHT");
        letters.add("CONTROL");
        letters.add("SHIFT");
    }

    public int draw(int level) {
        image(background, 0, 0);
        if (cont == 0) {
            time = millis();
            cont++;
        }
        timePassed = (millis() - time) / 1000;
        textSize(128);
        textAlign(CENTER, CENTER);
        fill(#FAECB6);
        if (letters.size() > 0) {
            text(letters.get(0), (width/2), height / 2);
        } else {
            cont = 0;
            return level + 1;
        }

        if (timePassed > 20) {
            cont = 0;
            points = 0;
            return level + 1;
        }

        if(keyPressed) {
            keyPressed();
        }

        return level;
    }

    void keyPressed() {
        if (keyCodeToString(keyCode) == letters.get(0)) {
            points+=10;
            letters.remove(0);
        } 
        else {
            points-=10;
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

    Integer getPoints() {
        return points;
    }
}
