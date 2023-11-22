class Ranking {

    Table puntajes;

    int numFilas;

    boolean save;

    public Ranking () {
        setUp();
    }

    public void setUp () {
        save = true;
        puntajes= loadTable("data/puntajes.csv", "header");

    }

    String drawScore(String nombre, int puntaje) {
        background(0);
        textSize(50);
        fill(#FAECB6);
        text("Puntaje: " + puntaje, 250, 250);
        if (save) {
            salvarTable(nombre, puntaje);
        }
        return "Ranking";
    }

    String drawLeadboard() {
        background(0);

        textSize(50);
        fill(#FAECB6);
        textSize(30);


        text("Mejores puntajes:", 250, 170);
        numFilas = puntajes.getRowCount();

        for (int i = 0; i < numFilas; i++) {
            TableRow fila = puntajes.getRow(i);
            int puntajeI = fila.getInt("Puntaje");
            String jugadorI = fila.getString("Nombre");
            textSize(30);
            fill(#FAECB6);

            text(jugadorI, 250, 200 + 30 * i);
            text(puntajeI, 430, 200 + 30 * i);
        }
        return "Ranking";
    }

    void salvarTable(String nombre, int puntaje) {
        save = false;
        TableRow nuevaFila = puntajes.addRow();
        nuevaFila.setString("Nombre", nombre);
        nuevaFila.setInt("Puntaje", puntaje);
        
        if (puntajes.getRowCount() > 6) {
            puntajes.removeRow(0);
        }
        saveTable(puntajes, "data/puntajes.csv");
    }

}