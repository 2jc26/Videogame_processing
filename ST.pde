class St {

    String[] textos;
    int yPosition; // Posición vertical actual
    boolean isDrawn = false;

    public St (String [] textos) {
        this.textos = textos;   
        yPosition = 100; // Inicializa la posición vertical
    }

    int draw(int p, int wordsPerLine) {
        if (!isDrawn) {
            isDrawn = true;
            fill(0);
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

        // TODO: button
        return p++;
    }
}
