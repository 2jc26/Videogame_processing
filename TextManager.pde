class TextManager
{


    HashMap<String, ArrayList<ArrayList<Boolean>>> letras = new HashMap<String, ArrayList<ArrayList<Boolean>>>();

    String[] texto = new String[4];

    public TextManager(String[] texto) {
        this.texto = texto;
        texto[0] = "I'm a little teapot";
        texto[1] = "Short and stout";
        texto[2] = "Here is my handle";
        texto[3] = "Here is my spout";
    }
    
    void estrella(int x, int y, float tamanio) {
    
        strokeWeight(1);
        beginShape();
        vertex(x, y + int(20 * tamanio));
        vertex(x + int(20 * tamanio), y + int(18 * tamanio));
        vertex(x + int(25 * tamanio), y);
        vertex(x + int(30 * tamanio), y + int(18 * tamanio));
        vertex(x + int(50 * tamanio), y + int(20 * tamanio));
        vertex(x + int(35 * tamanio), y + int(35 * tamanio));
        vertex(x + int(40 * tamanio), y + int(50 * tamanio));
        vertex(x + int(25 * tamanio), y + int(40 * tamanio));
        vertex(x + int(10 * tamanio), y + int(50 * tamanio));
        vertex(x + int(15 * tamanio), y + int(35 * tamanio));
        endShape();

    }

    // 45 pixeles entre letra y letra. Espacios de 75 para palabras normales. 80 de alto
    void letras(int x, int y, String letra) {
        float tam = 0.125;
        for (int j=0;j<7;j++) {
            for (int i=0;i<5;i++) {
                if (letras.get(letra).get(j).get(i)) {
                    estrella(x+int(i*(7.5)),y+int(j*(7.5)),tam); 
                }
            }
        }
    }   




    void creadorLyric(int i) {
        int x = 150;
        int y = height-140;
        boolean cambio = false;
        for (int j=0;j<texto[i].length();j++) {
            if (texto[i].charAt(j) == ' ') {
                if (j >= 30 && !cambio) {
                    cambio = true;
                    x = 250;
                    y = y + 80;
                } else {
                    x = x + 45;
                }
            } else {
                letras(x,y,String.valueOf(texto[i].charAt(j)));
                x = x + 45;
            }
        }
    }

    void agregarLetras() {
        for (int k=0;k<28;k++) {
            switch (k) {
            case 0:
            ArrayList<ArrayList<Boolean>> letterA = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == 0 && (j == 1 || j == 2 || j == 3)) || ((i == 1 || i == 2 || i == 4 || i == 5 || i==6) && (j == 0 || j == 4)) || (i==3)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterA.add(row);
            }
            letras.put("a", letterA);
            break;
            case 1:
            ArrayList<ArrayList<Boolean>> letterB = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || (i == 0 || i == 3 || i == 6) && j < 4 || (j == 4 && (i != 0 && i != 3 && i != 6))) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterB.add(row);
            }
            letras.put("b", letterB);
            break;
            case 2:
            ArrayList<ArrayList<Boolean>> letterC = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 && i > 0 && i < 6 || (i == 0 || i == 6) && j > 0) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterC.add(row);
            }
            letras.put("c", letterC);
            break;
            case 3:
            ArrayList<ArrayList<Boolean>> letterD = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((j == 0) || ((i == 0 || i == 6) && (j == 1 || j == 2)) || (i >= 2 && i <= 4) && j == 4 || (i == 1 || i == 5) && j == 3) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterD.add(row);
            }
            letras.put("d", letterD);
            break;
            case 4:
            ArrayList<ArrayList<Boolean>> letterE = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || i == 0 || i == 6 || (i == 3 && j <= 3)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterE.add(row);
            }
            letras.put("e", letterE);
            break;
            case 5:
            ArrayList<ArrayList<Boolean>> letterF = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || i == 0 || (i == 3 && j <= 3)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterF.add(row);
            }
            letras.put("f", letterF);
            break;
            case 6:
            ArrayList<ArrayList<Boolean>> letterG = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == 0 || i == 6) && (j > 0 && j < 4) || (i == 6 && j == 4) || (i >= 3 && i <= 5) && (j == 0 || j == 4) || (i == 2) && (j == 0) || (i == 1) && (j == 0 || j == 4) || (i == 3 && j >= 2)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterG.add(row);
            }
            letras.put("g", letterG);
            break;
            case 7:
            ArrayList<ArrayList<Boolean>> letterH = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || j == 4 || i == 3) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterH.add(row);
            }
            letras.put("h", letterH);
            break;
            case 8:
            ArrayList<ArrayList<Boolean>> letterI = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 2 || i == 0 || i == 6) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterI.add(row);
            }
            letras.put("i", letterI);
            break;
            case 9:
            ArrayList<ArrayList<Boolean>> letterJ = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((j == 3 && i<6) || (i == 0 && j >= 2 && j <= 4) || (i == 5 && j == 0)|| (i == 6 && (j == 1 || j == 2))) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterJ.add(row);
            }
            letras.put("j", letterJ);
            break;
            case 10:
            ArrayList<ArrayList<Boolean>> letterK = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || (j==5-1-i && j!= 0) || (j==i-2 && j!= 0)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterK.add(row);
            }
            letras.put("k", letterK);
            break;
            case 11:  
            ArrayList<ArrayList<Boolean>> letterL = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || i == 6) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterL.add(row);
            }
            letras.put("l", letterL);
            break;
            case 12:
            ArrayList<ArrayList<Boolean>> letterM = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || j == 4 || (j==1 || j==3) && (i==1) || (j==2) && (i==2 || i == 3)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterM.add(row);
            }
            letras.put("m", letterM);
            break;
            case 13:
            ArrayList<ArrayList<Boolean>> letterN = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || j == 4 || i == j) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterN.add(row);
            }
            letras.put("n", letterN);
            break;
            case 14:
            ArrayList<ArrayList<Boolean>> letterO = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == 0 || i == 6) && j >= 1 && j <= 3) {
                    row.add(true);
                } else if ((j == 0 || j == 4) && i >= 1 && i <= 5) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterO.add(row);
            }
            letras.put("o", letterO);
            break;
            case 15:
            ArrayList<ArrayList<Boolean>> letterP = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || (i == 0 || i == 3) && j < 4 || (i > 0 && i < 3) && j == 4) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterP.add(row);
            }
            letras.put("p", letterP);
            break;
            case 16:
            ArrayList<ArrayList<Boolean>> letterQ = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == 0 || i == 6) && j >= 1 && j <= 3) {
                    row.add(true);
                } else if ((j == 0 || j == 4) && i >= 1 && i <= 5) {
                    row.add(true);
                } else if (i >= 4 && i <= 6 && j == 3) {
                    row.add(true);
                } else if (i == 5 && j == 4) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterQ.add(row);
            }
            letras.put("q", letterQ);
            break;
            case 17:
            ArrayList<ArrayList<Boolean>> letterR = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (j == 0 || (i == 0 || i == 3) && j < 4 || (i > 0 && i < 3) && j == 4 || (i>=4 && j==i-2)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterR.add(row);
            }
            letras.put("r", letterR);
            break;
            case 18:
            ArrayList<ArrayList<Boolean>> letterS = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i==0 || i == 3 || i == 6) && j > 0 && j < 4 || (i == 1 || i == 2) && j == 0 || (i == 4 || i == 5) && j == 4 || (i==6 && j==0) || (i==0 && j==4)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterS.add(row);
            }
            letras.put("s", letterS);
            break;
            case 19:
            ArrayList<ArrayList<Boolean>> letterT = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (i == 0 || (i != 0 && j == 2)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterT.add(row);
            }
            letras.put("t", letterT);
            break;
            case 20:
            ArrayList<ArrayList<Boolean>> letterU = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == 0 && (j == 0 || j == 4)) || (i == 6 && (j == 0 || j == 4)) || (i > 0 && i < 6 && (j == 0 || j == 4)) || (i == 6 && j > 0 && j < 4)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterU.add(row);
            }
            letras.put("u", letterU);
            break;
            case 21:
            ArrayList<ArrayList<Boolean>> letterV = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i < 4 && (j == 0 || j == 4)) || ((i == 4|| i == 5) && (j==1 ||j==3)) || (i == 6 && j == 2)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterV.add(row);
            }
            letras.put("v", letterV);
            break;
            case 22:
            ArrayList<ArrayList<Boolean>> letterW = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (((j == 0  || j == 4) && i != 6) || (i==6 && (j==1 || j==3)) || (j==2 && (i==3 || i==4|| i==5 ))) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterW.add(row);
            }
            letras.put("w", letterW);
            break;
            case 23:
            ArrayList<ArrayList<Boolean>> letterX = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == j) || (i + j == 4)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterX.add(row);
            }
            letras.put("x", letterX);
            break;
            case 24:
            ArrayList<ArrayList<Boolean>> letterY = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i<3 && (j==0 || j==4)) || (i==3 && (j==1 || j==3)) || (i==4 && j==2) || (i==5 && j==2) || (i==6 && j==2)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterY.add(row);
            }
            letras.put("y", letterY);
            break;
            case 25:
            ArrayList<ArrayList<Boolean>> letterZ = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (i == 0 || i == 6 || j == 5 - i) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                letterZ.add(row);
            }
            letras.put("z", letterZ);
            break;
            case 26:
            ArrayList<ArrayList<Boolean>> apostropheSymbol = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if ((i == 0 && j == 2) || (i == 1 && j == 1) || (i == 2 && j == 0)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                apostropheSymbol.add(row);
            }
            letras.put("'", apostropheSymbol);
            break;
            case 27:
            ArrayList<ArrayList<Boolean>> commaSymbol = new ArrayList<ArrayList<Boolean>>();
            for (int i = 0; i < 7; i++) {
                ArrayList<Boolean> row = new ArrayList<Boolean>();
                for (int j = 0; j < 5; j++) {
                if (i == 4 && (j == 3 || j == 4) || (i==5 && j==4 )|| (i==6 && j==3)) {
                    row.add(true);
                } else {
                    row.add(false);
                }
                }
                commaSymbol.add(row);
            }
            letras.put(",", commaSymbol);
            default:
            System.out.println("Invalid grade");
            break;
            }
        }
        }
}