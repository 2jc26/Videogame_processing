class Bonification {

    private int cantidad;
    private int tipo; //1=random, 2=velocidad, 3=escudo, 4=arma
    private int x;
    private int y;
    private int ancho;
    private int alto;
    private boolean estado;
    private int time;
    private PImage consumible1, consumible2, consumible3, consumible4;

    public Bonification (int tipo) {
        int limiteSup;
        int limiteInf;
        if (tipo==1) {
            this.tipo=tipo;
        } else {

        }
    }

    public void draw () {
        int logo = int(random(1, 5));
        if (tipo!=1) {
            if (logo==1) {
                image(consumible1, x, y, ancho, alto);
            } else if (logo==2) {
                image(consumible2, x, y, ancho, alto);
            } else if (logo==3) {
                image(consumible3, x, y, ancho, alto);
            } else if (logo==4) {
                image(consumible4, x, y, ancho, alto);
            }
        }
    }

    public boolean colision(int xObj, int yObj, int maxXObj, int maxYObj) {
        if ((xObj < (maxX())) && ((maxXObj) > int(x)) && (yObj < (maxY())) && ((maxYObj) > y)) {
            return true;
        } else {
            return false;
        }
    }

    public int maxX () {
        return x+ancho;
    }

    public int maxY () {
        return y+alto;
    }

    public void setPos (int x, int y) {
        this.x=x;
        this.y=y;
    }

    public void setEstado (boolean estado) {
        this.estado=estado;
    }

    public void setTime (int time) {
        this.time=time;
    }

    public int getTipo () {
        return tipo;
    }

    public int getCantidad () {
        return cantidad;
    }

}