class St {

    String[] textos = new String[1];
    int yPosition; // Posición vertical actual
    boolean isDrawn = false;
    PImage img;
    boolean isClicked = false;

    public St () {
        textos[0] = "Hola mundo!!!";
        yPosition = 100; // Inicializa la posición vertical
    }

    public void setText(String [] textos) {
        img = loadImage("/images/Background.png");
        this.textos = textos;
    }

    int draw(int p, int wordsPerLine) {

        if (!isDrawn) {
            image(img, 0, 0);
            isDrawn = true;
            fill(#FAECB6);
            textSize(50);
            int wordCount = 0;
            String currentLine = "";

            for (int i = 0; i < textos.length; i++) {
                String[] words = splitTokens(textos[i]);
                for (String word : words) {
                    currentLine += word + " ";
                    wordCount++;
                    if (wordCount >= wordsPerLine) {
                        text(currentLine, 60, yPosition);
                        yPosition += textAscent() + textDescent(); // Aumenta la posición vertical
                        currentLine = "";
                        wordCount = 0;
                    }
                }
            }

            if (!currentLine.isEmpty()) {
                text(currentLine, 100, yPosition);
                yPosition += textAscent() + textDescent();
            }

            textSize(40);
            fill(#FAECB6);
            text("Para continuar pulsa la tecla: \"Espacio\"", 250, 700);  
        }

        if(keyPressed) {
            keyPressed();
        }

        if (isClicked) {
            isClicked = false;
            return p + 1;
        }
        return p;
    }
    
    void keyPressed() {
        if (key == ' ') {
            isClicked = true;
        }
    }
}

