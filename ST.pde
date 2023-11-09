class St {

    String[] textos;
    int yPosition; // Posición vertical actual
    boolean isDrawn = false;

    boolean isClicked = false;

    public St (String [] textos) {
        this.textos = textos;   
        yPosition = 100; // Inicializa la posición vertical
    }

    int draw(int p, int wordsPerLine) {
        if (!isDrawn) {
            isDrawn = true;
            fill(0);
            textSize(20);
            int wordCount = 0;
            String currentLine = "";

            for (int i = 0; i < textos.length; i++) {
                String[] words = splitTokens(textos[i]);
                for (String word : words) {
                    currentLine += word + " ";
                    wordCount++;
                    if (wordCount >= wordsPerLine) {
                        text(currentLine, 100, yPosition);
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
        }

        textSize(20);
        fill(0);
        text("Para continuar pulsa la tecla: \"Espacio\"", 350, 700);  

        // TODO: button
        return p++;
    }
    
    void keyPressed() {
        if (keyCode == UP) {
            isClicked = true;
        }
    }
}

