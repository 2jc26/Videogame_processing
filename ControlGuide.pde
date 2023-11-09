class ControlGuide {

    public ControlGuide() {

    }


    void draw() {
        background(255);
        // draw the control guide
        fill(0);
        for (int x = 0; x < 400; x+=100) {
            drawKey(x);
        }

    }

    void drawKey(int x) {

        if (x == 0) {
            // draw the W key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
        if (x == 100) {
            // draw the A key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
        if (x == 200) {
            // draw the S key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
        if (x == 300) {
            // draw the D key
            beginShape();
            rect(200, 200+x, 50, 4);
            rect(200, 200+x, 4, 50);
            rect(200, 250+x, 50, 4);
            rect(250, 200+x, 4, 54);
            rect(200, 254+x, 4, 4);
            rect(204, 258+x, 4, 4);
            rect(208, 262+x, 58, 4);
            rect(258, 258+x, 4, 4);
            rect(254, 254+x, 4, 4);
            rect(262, 208+x, 4, 54);
            rect(254, 200+x, 4, 4);
            rect(258, 204+x, 4, 4);
            endShape();
        }
    }

}