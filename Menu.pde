import controlP5.*;

ControlGuide cg;
Ranking r;

class Menu {

    private String state;
    private ControlP5 cp5;
    private ControlFont font;

    public Menu(String state, ControlP5 cp5) {
        this.state = state;
        this.cp5 = cp5;
        this.font = new ControlFont(createFont("Arial", 20));
        this.cp5.setFont(font);
        this.cp5.addListener(new ControlListener() {
            public void controlEvent(ControlEvent theEvent) {
                if (theEvent.isController()) {
                    if (theEvent.getController().getName().equals("nuevoJuego")) {
                        nuevoJuego();
                    } else if (theEvent.getController().getName().equals("controls")) {
                        setState("Controls");
                        controls();
                    } else if (theEvent.getController().getName().equals("ranking")) {
                        setState("Ranking");
                        ranking();
                    } else if (theEvent.getController().getName().equals("salir")) {
                        salir();
                    } else if (theEvent.getController().getName().equals("back")) {
                        cp5.getController("nuevoJuego").show();
                        cp5.getController("controls").show();
                        cp5.getController("ranking").show();
                        cp5.getController("salir").show();
                        cp5.getController("back").hide();
                        setState("Principal");
                    }
                }
            }
        });
    }

    public String getState() {
        return state;
    }

    public void setState(String newState) {
        this.state = newState;
    }

    public void draw() {
        if (cp5.getController("nuevoJuego") == null) {
            cp5.addButton("nuevoJuego")
                .setPosition((width/2)-150, height/6)
                .setSize(300, 100)
                .setCaptionLabel("Nuevo Juego").setFont(font);
        }

        if (cp5.getController("controls") == null) {
            cp5.addButton("controls")
                .setPosition((width/2)-150, height/3)
                .setSize(300, 100)
                .setCaptionLabel("Controls").setFont(font);
        }

        if (cp5.getController("ranking") == null) {
            cp5.addButton("ranking")
                .setPosition((width/2)-150, height/2)
                .setSize(300, 100)
                .setCaptionLabel("Ranking").setFont(font);
        }

        if (cp5.getController("salir") == null) {
            cp5.addButton("salir")
                .setPosition((width/2)-150, (height/2)+height/6)
                .setSize(300, 100)
                .setCaptionLabel("Salir").setFont(font);
        }

        if (cp5.getController("back") == null) {
            cp5.addButton("back")
                .setPosition((width/2)-150, (height/2)+height/6)
                .setSize(300, 100)
                .setCaptionLabel("Back").setFont(font)
                .hide();
        }
    }

    public void nuevoJuego() {
        cp5.getController("nuevoJuego").hide();
        cp5.getController("controls").hide();
        cp5.getController("ranking").hide();
        cp5.getController("salir").hide();
        setState("Game");
    }

    public void controls() {
        cp5.getController("nuevoJuego").hide();
        cp5.getController("controls").hide();
        cp5.getController("ranking").hide();
        cp5.getController("salir").hide();
        cp5.getController("back").show();
        ControlGuide cg = new ControlGuide();
        cg.draw();
    }

    public void ranking() {
        cp5.getController("nuevoJuego").hide();
        cp5.getController("controls").hide();
        cp5.getController("ranking").hide();
        cp5.getController("salir").hide();
        cp5.getController("back").show();
        Ranking r = new Ranking();
        r.drawLeadboard();
    }

    public void salir() {
        exit();
    }
}
