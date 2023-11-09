class Rewards {

    String[] textos;

    boolean isDrawn = false;
    
    public Rewards (String [] textos) {
        this.textos = textos;   
        
        
    }


    int draw(int p) {


        // println(textos[0]);
        if (!isDrawn) {
            isDrawn = true;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
            fill(0);
            text(textos[0], 100, 100);
        }

        // TODO: button
        return p++;
    }
}