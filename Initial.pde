class Initial {

    Fighter pej;
    Mage mage;
    Emblem emblem;
    Fireball fireball;

    color clothesColor;
    color hairColor;
    color skinColor;

    public Initial(Fighter pej, Mage mage, Emblem emblem, Fireball fireball, color clothesColor, color hairColor, color skinColor) {
        this.pej = pej;
        this.mage = mage;
        this.emblem = emblem;
        this.fireball = fireball;
        this.clothesColor = clothesColor;
        this.hairColor = hairColor;
        this.skinColor = skinColor;
    }

    public void draw () {

        background(255);
        pej.idleFront(hairColor, clothesColor, skinColor);
        mage.idleFront();
        emblem.draw();
        fireball.draw();

    }
}