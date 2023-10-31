class Indexer {

    int index = 0;

    int getIndex() {
        return index++;
    }

    void resetIndex() {
        index = 0;
    }

}