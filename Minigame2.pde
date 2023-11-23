import java.util.HashMap;

class Minigame2 {

    Emblem player;

    boolean completed = false;
    boolean moving = false;
    boolean started = false;
    boolean setUp = true;

    int time = 0;
    int timePassed = 0;
    int points = 0;
    int dirX = 0;
    int dirY = 0;
    int tamCell = 50;
    int xIni = 250;
    int yIni = 250;

    String dir = "none";


    HashMap<String,ArrayList<String>> walls = new HashMap<String,ArrayList<String>>();
    ArrayList<String> losas = new ArrayList<String>();

    public Minigame2(Emblem player) {
        this.player = player;
        player.setX(325);
        player.setY(575);
        start();
    }

    public void start() {
        time = millis();
        started = false;
    }

    public void paintWalls(int lvl) {
        int x = xIni;
        int y = yIni;
        noStroke();
        if (lvl == 1) {
            for (int i=0; i<8; i++){
                for (int j=0; j<9; j++){
                    if ( (i==0 && j>6)|| ( i == 1 && j >6) || (i == 2 && j >7) || (i==3 && j>7)) {
                        fill(255);
                    } else if ((i==0 && (j<7)) || i==7 || j==0 || (i==1 && j==3) || (i==1 && (j==3 || j==4)) || ((i == 1 || i == 2) && (j==6 || j==7)) || (i==3 && j==1) || (i==5 && j ==2) || (i==3 && j==4) || (i == 4 && (j==4 || j==5)) || (j==7 && (i==3 || i==4)) || (j==8 && (i>=4))) {
                        fill(#D1345B);
                    } else {
                        if (setUp) {
                            if( (i == 5 && (j == 4 || j == 5 || j == 7)) || (i==4 && j==1) || (i==3 && j==6) || (i==2 && (j==3 || j==4)) || (i==1 && (j==1 || j==2 || j==5))) {
                                ArrayList<String> up = walls.get("up");
                                if (up == null) {
                                    up = new ArrayList<String>();
                                }
                                up.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("up",up);
                            }
                            if ((i==6) || (i==4 && j==2) || (i==3 && j==5) || (i==2 && (j==1 || j==4))) {
                                ArrayList<String> down = walls.get("down");
                                if (down == null) {
                                    down = new ArrayList<String>();
                                }
                                down.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("down",down);
                            }
                            if ((j==1 && i!=3) || (j==2 && i==3) || (j==3 && i==5) || (j==5 && (i==3 || i==1)) || (j==6 && i==4) ) {
                                ArrayList<String> left = walls.get("left");
                                if (left == null) {
                                    left = new ArrayList<String>();
                                }
                                left.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("left",left);
                            }
                            if ((j==1 && i==5) || (j==2 && i==1) || (j==3 && (i==3 || i==4)) || (j==5 && (i==1 || i==2)) || (j==6 && (i==3 || i==4)) || (j==7 && (i==5 || i == 6))) {
                                ArrayList<String> right = walls.get("right");
                                if (right == null) {
                                    right = new ArrayList<String>();
                                }
                                right.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("right",right);
                            }
                            losas.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                        }
                        if (losas.contains(str(x+(tamCell/2))+","+str(y+(tamCell/2)))) {
                            fill(#C6D2F9);
                        } else {
                            fill(#444D6D);
                        }
                    }
                    rect(x,y,tamCell,tamCell);
                    x += tamCell;
                }
                x = xIni;
                y += tamCell;
            }

            if (setUp) {
                setUp = false;
            }
        } else if (lvl == 2) {
            for (int i=0; i<11; i++){
                for (int j=0; j<8; j++){
                    if (i==0 || i==10 || j==0 || j ==7 || (i==1 && (j==3 || j==4)) || (i==3 && j==6) || (i==4 && (j==1 || j==4)) || (i==6 && j==2) || (i==7 && (j==2 || j==5 || j==6)) || (i==9 && j==3)) {
                        fill(#526352);
                    } else {
                        if (setUp) {
                            if( (i == 1) || (i==2 && (j==3 || j==4)) || (i==4 && (j==6)) || (i==5 && (j==1 || j==4)) || (i==8 && (j==2 || j==5 || j==6))) {
                                ArrayList<String> up = walls.get("up");
                                if (up == null) {
                                    up = new ArrayList<String>();
                                }
                                up.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("up",up);
                            }
                            if ((i==9) || (i==8 && j==3) || (i==6 && (j==2 || j==5 || j==6)) || (i==3 && (j==1 || j==4)) || (i==2 && j==6) || (i==5 && j==2)) {
                                ArrayList<String> down = walls.get("down");
                                if (down == null) {
                                    down = new ArrayList<String>();
                                }
                                down.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("down",down);
                            }
                            if ((j==1 && i!=4) || (j==3 && (i==6 || i==7)) || (j==4 && i==9) ||(j==5 && (i==1 || i==4))) {
                                ArrayList<String> left = walls.get("left");
                                if (left == null) {
                                    left = new ArrayList<String>();
                                }
                                left.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("left",left);
                            }
                            if ((j==1 && (i==6 || i==7)) || (j==2 && (i==1 || i==9)) || (j==3 && i==4) || (j==4 && i==7) || (j==5 && i==3) || (j==6)) {
                                ArrayList<String> right = walls.get("right");
                                if (right == null) {
                                    right = new ArrayList<String>();
                                }
                                right.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                                walls.put("right",right);
                            }
                            losas.add(str(x+(tamCell/2))+","+str(y+(tamCell/2)));
                        }
                        if (losas.contains(str(x+(tamCell/2))+","+str(y+(tamCell/2)))) {
                            fill(#189D18);
                        } else {
                            fill(#093409);
                        }
                    }
                    rect(x,y,tamCell,tamCell);
                    x += tamCell;
                }
                x = xIni;
                y += tamCell;
            }

            if (setUp) {
                setUp = false;
            }
        }
    }

    public int draw(int level) {
        background(255);
        paintWalls(level);
        player.draw();
        if (started) {
            start();
        }
        timePassed = (millis() - time)/1000;

        movement();

        if (losas.size() == 0) {
            completed = true;
            calculetePoints();
            screen = 7;
        }

        return screen;
    }

    public void end() {
        player.setTam(0.5);
    }

    public void setStarted() {
        this.started = true;
    }

    public void calculetePoints() {
        if (completed) {
            points = timePassed;
            if (timePassed < 20) {
                points += 100;
            } else if (timePassed < 20) {
                points += 50;
            } else if (timePassed < 30) {
                points += 25;
            }
        }
    }

    public int getPoints() {
        return points;
    }

    private void movement() {

        String position = str(player.getX())+","+str(player.getY());
        if (losas.contains(position)) {
            losas.remove(position);
        }
        if(keyPressed) {
            keyPressed();
        }

        if (moving) {
            if (walls.get(dir) != null && dir != "none") {
                boolean contains = false;
                if (walls.get(dir).contains(position)) {
                    contains = true;
                }
                if (contains) {
                    moving = false;
                } else {
                    player.setX(player.getX()+dirX);
                    player.setY(player.getY()+dirY);
                }
            }
        }
    }


    void keyPressed() {
        if (!moving) {
            if (key == 'w' || key == 's' || key == 'a' || key == 'd') {
                moving = true;
                if (key == 'w') {
                    dirX = 0;
                    dirY = -1;
                    dir = "up";
                }
                if (key == 's'){
                    dirX = 0;
                    dirY = 1;
                    dir = "down";
                }
                if (key == 'a'){
                    dirX = -1;
                    dirY = 0;
                    dir = "left";
                }
                if (key == 'd'){
                    dirX = 1;
                    dirY = 0;
                    dir = "right";
                }
            }
        }
    }

    void mousePressed() {
        if (mouseButton == LEFT) {
            
        }
    }
}