class ST {
    String[] lines;
    int fontSize = 20;

    // File ig = new File("./story/letra.txt")

    void ST() {
        size(1000,1000);
        background(255);
        lines = loadStrings("./story/letra.txt");
        println(lines);
    }

    void draw() {
        background(255);
        fill(0);
    }

}