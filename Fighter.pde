class Fighter {

    private int x;
    private int y;
    private int tam;
    private int speed = 1;


    public Fighter (int posX, int posY, int tam) {
        this.x = posX;
        this.y = posY;
        this.tam = tam;
        
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
        if (this.speed < 1) {
            this.speed = 1;
        }
    }

    public int minX() {
        return this.x - int(4*7*tam);
    }

    public int minY() {
        return this.y-int(13*4*tam);
    }

    public int maxX() {
        return this.x + int(4*8*tam);
    }

    public int maxY() {
        return this.y + int(4*7*tam);
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public int getTam() {
        return tam;
    }

    public void setX(int posX) {
        this.x = posX;
    }

    public void setY(int posY) {
        this.y = posY;
    }

    public void setTam(int tam) {
        this.tam = tam;
    }

    public boolean colision(int xMin, int yMin, int xMax, int yMax) {
        if (((xMin < maxX()) || ((xMax < maxX()))) && ((xMin) > int(minX()) || ((xMax) > int(minX()))) && (yMin < (maxY()) || (yMax < (maxY()))) && ((yMin) > minY() || ((yMax) > minY())) ) {
            return true;
        } else {
            return false;
        }
    }
    
    void idleRight() {

        // Legs
        fill(#4675A8);
        beginShape();
        vertex(x+9*tam, y+36*tam);
        vertex(x+18*tam, y+36*tam);
        vertex(x+18*tam, y+28*tam);
        vertex(x+7*tam, y+28*tam);
        vertex(x+7*tam, y+34*tam);
        vertex(x+9*tam, y+34*tam);
        vertex(x+9*tam, y+36*tam);
        endShape();

        // Camiseta
        fill(#3664B3);
        beginShape();
        vertex(x+7*tam, y+28*tam);
        vertex(x+5*tam, y+28*tam);
        vertex(x+5*tam, y+23*tam);
        vertex(x+7*tam, y+23*tam);
        vertex(x+7*tam, y+21*tam);
        vertex(x+17*tam, y+21*tam);
        vertex(x+17*tam, y+23*tam);
        vertex(x+20*tam, y+23*tam);
        vertex(x+20*tam, y+28*tam);
        vertex(x+18*tam, y+28*tam);
        vertex(x+7*tam, y+28*tam);
        endShape();

        // Arms
        fill(#F2C9A1);
        beginShape();
        vertex(x+9*tam, y+25*tam);
        vertex(x+12*tam, y+25*tam);
        vertex(x+12*tam, y+27*tam);
        vertex(x+14*tam, y+27*tam);
        vertex(x+14*tam, y+30*tam);
        vertex(x+11*tam, y+30*tam);
        vertex(x+11*tam, y+28*tam);
        vertex(x+9*tam, y+28*tam);
        vertex(x+9*tam, y+25*tam);
        endShape();

        // Cabeza
        fill(#4F9DC4);
        beginShape();
        vertex(x+7*tam, y+21*tam);
        vertex(x+7*tam, y+20*tam);
        vertex(x+5*tam, y+20*tam);
        vertex(x+5*tam, y+18*tam);
        vertex(x+3*tam, y+18*tam);
        vertex(x+3*tam, y+16*tam);
        vertex(x+1*tam, y+16*tam);
        vertex(x+1*tam, y+14*tam);
        vertex(x+0*tam, y+14*tam);
        vertex(x+0*tam, y+13*tam);
        vertex(x+1*tam, y+13*tam);
        vertex(x+1*tam, y+10*tam);
        vertex(x+0*tam, y+10*tam);
        vertex(x+0*tam, y+9*tam);
        vertex(x+1*tam, y+9*tam);
        vertex(x+1*tam, y+7*tam);
        vertex(x+5*tam, y+7*tam);
        vertex(x+5*tam, y+5*tam);
        vertex(x+7*tam, y+5*tam);
        vertex(x+7*tam, y+2*tam);
        vertex(x+5*tam, y+2*tam);
        vertex(x+5*tam, y+0*tam);
        vertex(x+3*tam, y+0*tam);
        vertex(x+12*tam, y+0*tam);
        vertex(x+12*tam, y+1*tam);
        vertex(x+14*tam, y+1*tam);
        vertex(x+14*tam, y+3*tam);
        vertex(x+16*tam, y+3*tam);
        vertex(x+16*tam, y+5*tam);
        vertex(x+18*tam, y+5*tam);
        vertex(x+18*tam, y+7*tam);
        vertex(x+22*tam, y+7*tam);
        vertex(x+22*tam, y+9*tam);
        vertex(x+24*tam, y+9*tam);
        vertex(x+24*tam, y+14*tam);
        vertex(x+22*tam, y+14*tam);
        vertex(x+22*tam, y+21*tam);
        vertex(x+7*tam, y+21*tam);
        endShape();

        // Cara
        fill(#F2C9A1);
        beginShape();
        vertex(x+21*tam, y+22*tam);
        vertex(x+15*tam, y+22*tam);
        vertex(x+15*tam, y+20*tam);
        vertex(x+13*tam, y+20*tam);
        vertex(x+13*tam, y+17*tam);
        vertex(x+19*tam, y+17*tam);
        vertex(x+19*tam, y+15*tam);
        vertex(x+21*tam, y+15*tam);
        vertex(x+21*tam, y+22*tam);
        endShape();
        beginShape();
        rect(x+17*tam, y+13*tam, 2*tam, 2*tam);

    }


    void idleFront(color hairColor, color clothesColor, color skinColor) {

        // Layout

        // Left leg
        fill(#320459);
        noStroke();
        beginShape();
        rect(x-16*tam, y+4*tam, 4*tam, 20*tam);
        rect(x-16*tam, y+8*tam, 16*tam, 4*tam);
        rect(x-12*tam, y+24*tam, 8*tam, 4*tam);
        rect(x-4*tam, y+12*tam, 4*tam, 12*tam);

        // Right leg
        rect(x+12*tam, y+4*tam, 4*tam, 20*tam);
        rect(x+0*tam, y+8*tam, 16*tam, 4*tam);
        rect(x+4*tam, y+24*tam, 8*tam, 4*tam);
        rect(x+0*tam, y+12*tam, 4*tam, 12*tam);

        // Left arm
        rect(x-28*tam, y+4*tam, 4*tam, 8*tam);
        rect(x-24*tam, y+12*tam, 8*tam, 4*tam);
        rect(x-24*tam, y-4*tam, 4*tam, 8*tam);
        rect(x-20*tam, y-8*tam, 8*tam, 4*tam);

        // Right arm
        rect(x+24*tam, y+4*tam, 4*tam, 8*tam);
        rect(x+16*tam, y+12*tam, 8*tam, 4*tam);
        rect(x+20*tam, y-4*tam, 4*tam, 8*tam);
        rect(x+12*tam, y-8*tam, 8*tam, 4*tam);

        // Face
        rect(x-12*tam, y-4*tam, 4*tam, 4*tam);
        rect(x-8*tam, y+0*tam, 16*tam, 4*tam);
        rect(x-4*tam, y+4*tam, 8*tam, 4*tam);
        rect(x+8*tam, y-4*tam, 4*tam, 4*tam);
        rect(x-12*tam, y-12*tam, 8*tam, 4*tam);
        rect(x-8*tam, y-8*tam, 4*tam, 4*tam);
        rect(x+0*tam, y-12*tam, 12*tam, 4*tam);
        rect(x+4*tam, y-8*tam, 4*tam, 4*tam);

        // Head
        rect(x-20*tam, y-12*tam, 4*tam, 4*tam);
        rect(x-24*tam, y-16*tam, 4*tam, 4*tam);
        rect(x-20*tam, y-20*tam, 4*tam, 4*tam);
        rect(x-24*tam, y-24*tam, 4*tam, 4*tam);
        rect(x-28*tam, y-28*tam, 4*tam, 4*tam);
        rect(x-24*tam, y-32*tam, 4*tam, 4*tam);
        rect(x-20*tam, y-40*tam, 4*tam, 8*tam);
        rect(x-16*tam, y-44*tam, 4*tam, 4*tam);
        rect(x-12*tam, y-48*tam, 4*tam, 4*tam);
        rect(x-8*tam, y-52*tam, 4*tam, 16*tam);
        rect(x-4*tam, y-36*tam, 8*tam, 4*tam);
        rect(x+4*tam, y-40*tam, 4*tam, 4*tam);
        rect(x+8*tam, y-44*tam, 4*tam, 4*tam);
        rect(x+12*tam, y-40*tam, 4*tam, 4*tam);
        rect(x+12*tam, y-36*tam, 12*tam, 4*tam);
        rect(x+24*tam, y-32*tam, 4*tam, 4*tam);
        rect(x+28*tam, y-28*tam, 4*tam, 4*tam);
        rect(x+24*tam, y-24*tam, 4*tam, 4*tam);
        rect(x+20*tam, y-20*tam, 4*tam, 4*tam);
        rect(x+24*tam, y-16*tam, 4*tam, 4*tam);
        rect(x+20*tam, y-12*tam, 4*tam, 4*tam);
        endShape();


        // Clothes
        fill(clothesColor);
        noStroke();
        beginShape();
        rect(x-20*tam, y-4*tam, 8*tam, 4*tam);
        rect(x-16*tam, y+0*tam, 8*tam, 4*tam);
        rect(x-12*tam, y+4*tam, 8*tam, 4*tam);
        rect(x-8*tam, y+8*tam, 16*tam, 8*tam);
        rect(x+4*tam, y+4*tam, 8*tam, 4*tam);
        rect(x+8*tam, y+0*tam, 8*tam, 4*tam);
        rect(x+12*tam, y-4*tam, 8*tam, 4*tam);

        rect(x-12*tam, y+20*tam, 8*tam, 4*tam);
        rect(x+4*tam, y+20*tam, 8*tam, 4*tam);
        endShape();


        // Hair
        fill(hairColor);
        noStroke();
        beginShape();
        rect(x-16*tam, y-12*tam, 4*tam, 4*tam);
        rect(x+12*tam, y-12*tam, 8*tam, 4*tam);
        rect(x-20*tam, y-16*tam, 44*tam, 4*tam);
        rect(x-16*tam, y-20*tam, 36*tam, 4*tam);
        rect(x-20*tam, y-24*tam, 44*tam, 4*tam);
        rect(x-24*tam, y-28*tam, 52*tam, 4*tam);
        rect(x-20*tam, y-32*tam, 44*tam, 4*tam);
        rect(x-16*tam, y-36*tam, 12*tam, 4*tam);
        rect(x+4*tam, y-36*tam, 8*tam, 4*tam);
        rect(x-16*tam, y-40*tam, 8*tam, 4*tam);
        rect(x+8*tam, y-40*tam, 4*tam, 4*tam);
        rect(x-12*tam, y-44*tam, 4*tam, 4*tam);

        endShape();


        // Skin
        fill(skinColor);
        noStroke();
        beginShape();
        rect(x-12*tam, y-20*tam, 4*tam, 4*tam);
        rect(x-8*tam, y-16*tam, 4*tam, 4*tam);
        rect(x+4*tam, y-16*tam, 4*tam, 4*tam);
        rect(x+8*tam, y-20*tam, 4*tam, 4*tam);
        rect(x-4*tam, y-12*tam, 4*tam, 4*tam);
        rect(x-4*tam, y-8*tam, 8*tam, 4*tam);
        rect(x-8*tam, y-4*tam, 16*tam, 4*tam);
        rect(x-12*tam, y-8*tam, 4*tam, 4*tam);
        rect(x+8*tam, y-8*tam, 4*tam, 4*tam);
        rect(x-20*tam, y+0*tam, 4*tam, 12*tam);
        rect(x-24*tam, y+4*tam, 4*tam, 8*tam);
        rect(x+16*tam, y+0*tam, 4*tam, 12*tam);
        rect(x+20*tam, y+4*tam, 4*tam, 8*tam);
        rect(x-12*tam, y+12*tam, 8*tam, 8*tam);
        rect(x+4*tam, y+12*tam, 8*tam, 8*tam);
        endShape();
    }


    public void move(int dirX, int dirY, int limitXMaX, int limitYMax, int limitXMin, int limitYMin) {
        if (dirX > 0) {
            if (this.x < limitXMaX) {
                this.x += this.speed;
            } else {
                this.x = limitXMaX;
            }
        } else if (dirX < 0) {
            if (this.x > limitXMin) {
                this.x -= this.speed;
            } else {
                this.x = limitXMin;
            }
        }

        if (dirY > 0) {
            if (this.y < limitYMax) {
                this.y += this.speed;
            } else {
                this.y = limitYMax;
            }
        } else if (dirY < 0) {
            if (this.y > limitYMin) {
                this.y -= this.speed;
            } else {
                this.y = limitYMin;
            }
        }
    }

    public void moveSpecial(int dirX, int dirY, int limitXMaX, int limitYMax, int limitXMin, int limitYMin) {

        
        if (this.y >= 490) {
            limitXMin = 416;
            limitXMaX = 674;
            if ((this.x >= 416 && this.x <= 480) || (this.x>=611 && this.x <= 674)) {
                limitYMin = 490;
            }
        }
        if (this.y >= 550) {
            limitXMin = 480;
            limitXMaX = 611;
            if ((this.x >= 480 || this.x <= 540) && (this.x >= 548 || this.x <= 611)) {
                limitYMin = 550;
            }
        }
        if (this.y >= 680) {
            limitYMax = 680;
            limitXMin = 540;
            limitXMaX = 548;
        }
        if (this.x <= 480 || x >= 611) {
            limitYMin = 300;
        }

        if (dirX > 0) {
            if (this.x < limitXMaX) {
                this.x += this.speed;
            } else {
                this.x = limitXMaX;
            }
        } else if (dirX < 0) {
            if (this.x > limitXMin) {
                this.x -= this.speed;
            } else {
                this.x = limitXMin;
            }
        }

        if (dirY > 0) {
            if (this.y < limitYMax) {
                this.y += this.speed;
            } else {
                this.y = limitYMax;
            }
        } else if (dirY < 0) {
            if (this.y > limitYMin) {
                this.y -= this.speed;
            } else {
                this.y = limitYMin;
            }
        }
    }

}