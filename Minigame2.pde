class Minigame2 {

    Emblem player;

    boolean completed = false;
    boolean moving = false;
    boolean started = false;

    int time = 0;
    int timePassed = 0;
    int points = 0;
    int dirX = 0;
    int dirY = 0;
    int tamCell = 50;
    int xIni = 250;
    int yIni = 250;

    String dir = "none";


    HashMap<String,ArrayList<int[]>> walls = new HashMap<String,ArrayList<int[]>>();
    ArrayList<int[]> losas = new ArrayList<int[]>();

    public Minigame2(Emblem player) {
        this.player = player;
        player.setX(325);
        player.setY(575);
    }

    public void start() {
        paintWalls(1);
        player.setTam(1);
        time = millis();
        started = false;
    }

    public void paintWalls(int lvl) {
        int x = xIni;
        int y = yIni;
        noStroke();
        for (int i=0; i<8; i++){
            for (int j=0; j<9; j++){
                if ( (i==0 && j>6)|| ( i == 1 && j >6) || (i == 2 && j >7) || (i==3 && j>7)) {
                    fill(255);
                } else if ((i==0 && (j<7)) || i==7 || j==0 || (i==1 && j==3) || (i==1 && (j==3 || j==4)) || ((i == 1 || i == 2) && (j==6 || j==7)) || (i==3 && j==1) || (i==5 && j ==2) || (i==3 && j==4) || (i == 4 && (j==4 || j==5)) || (j==7 && (i==3 || i==4)) || (j==8 && (i>=4))) {
                    fill(#D1345B);
                } else {

                    if( (i == 5 && (j == 4 || j == 5 || j == 7)) || (i==4 && j==1) || (i==3 && j==6) || (i==2 && (j==3 || j==4)) || (i==1 && (j==1 || j==2 || j==5))) {
                        ArrayList<int[]> up = walls.get("up");
                        if (up == null) {
                            up = new ArrayList<int[]>();
                        }
                        up.add(new int[]{(x+(tamCell/2)),(y+(tamCell/2))});
                        walls.put("up",up);
                    }
                    if ((i==6) || (i==4 && j==2) || (i==3 && j==5) || (i==2 && (j==1 || j==4))) {
                        ArrayList<int[]> down = walls.get("down");
                        if (down == null) {
                            down = new ArrayList<int[]>();
                        }
                        down.add(new int[]{(x+(tamCell/2)),(y+(tamCell/2))});
                        walls.put("down",down);
                    }
                    if ((j==1 || ( i!=3)) || (j==2 && i==3) || (j==3 && i==5) || (j==5 && i==3) || (j==6 && i==4)) {
                        ArrayList<int[]> left = walls.get("left");
                        if (left == null) {
                            left = new ArrayList<int[]>();
                        }
                        left.add(new int[]{(x+(tamCell/2)),(y+(tamCell/2))});
                        walls.put("left",left);
                    }
                    if ((j==1 && i==5) || (j==3 && (i==3 || i==4)) || (j==5 && (i==1 || i==2)) || (j==6 && (i==3 || i==4)) || (j==7 && (i==5 || i == 6))) {
                        ArrayList<int[]> right = walls.get("right");
                        if (right == null) {
                            right = new ArrayList<int[]>();
                        }
                        right.add(new int[]{(x+(tamCell/2)),(y+(tamCell/2))});
                        walls.put("right",right);
                    }
                    fill(#C6D2F9);
                }
                rect(x,y,tamCell,tamCell);
                losas.add(new int[]{(x+(tamCell/2)),(y+(tamCell/2))});
                x += tamCell;
            }
            x = xIni;
            y += tamCell;
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

        int[] pos = new int[]{player.getX(),player.getY()};

        if(keyPressed) {
            keyPressed();
        }

        if (moving) {
            if (walls.get(dir).contains(pos)) {
                moving = false;
                dir = "none";
            } else {
                player.setX(player.getX()+dirX);
                player.setY(player.getY()+dirY);
                if (losas.contains(pos)) {
                    fill(#2980B9);
                    rect(pos[0]-tamCell/2,pos[1]-tamCell/2,tamCell,tamCell);
                }
            }
        } else {
            
        }
    }


    void keyPressed() {
        if (!moving) {
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

    void mousePressed() {
        if (mouseButton == LEFT) {
            
        }
    }
}