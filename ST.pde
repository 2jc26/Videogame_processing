class St {
    String[] lines;
    int fontSize = 20;

    // File ig = new File("./story/letra.txt")

    public St(String [] arreglo) {
        lines = arreglo;
    }

    int draw(int p) {
        for (int i = 0; i < lines.length; i++) {
            text(lines[i], 10, p);
            p += fontSize;
        }
        
        return p++;
    }

}