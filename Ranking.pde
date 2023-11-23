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

    public void  drawScore(String nombre, int puntaje) {
        background(0);
        textSize(50);
        fill(#FAECB6);
        text("Puntaje: " + puntaje, 250, 250);
        if (save) {
            salvarTable(nombre, puntaje);
        }
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
            int indicePuntajeMasBajo = encontrarIndicePuntajeMasBajo();
            puntajes.removeRow(indicePuntajeMasBajo);
        }
        saveTable(puntajes, "data/puntajes.csv");
    }

    int encontrarIndicePuntajeMasBajo() {
        int indicePuntajeMasBajo = -1;
        int puntajeMasBajo = Integer.MAX_VALUE;

        for (int i = 0; i < puntajes.getRowCount(); i++) {
            int puntajeActual = puntajes.getInt(i, "Puntaje");
            if (puntajeActual < puntajeMasBajo) {
                println(puntajeMasBajo);
                puntajeMasBajo = puntajeActual;
                indicePuntajeMasBajo = i;
            }
        }

     return indicePuntajeMasBajo;
    }
}