class Rewards {

    String[] textos;
    
    public Rewards (String [] textos) {
        this.textos = textos;   
        
        
    }


    int draw(int p) {

        background(255);
        // println(textos[0]);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
        fill(0);
        text(textos[0], 100, 100);

        // TODO: button
        return p++;
    }
}