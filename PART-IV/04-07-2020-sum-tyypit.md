# Sum-tyypit

Sum-tyypit voidaan jakaa vastaavasti, kuten [product-tyypit](04-07-2020-product-tyypit.md)
nullary- ja binäärisummiin sekä rajoitettuihin summiin. Nullarya summaa vastaa määritelmissä
tyyppi void ja binääriä sum(t1;t2). Void vastaa tyyppiä, jolla ei ole konstruktoria, joten sille
myöskään ei ole määritelty muotoa, jolla sen voisi muodostaa. Binäärisumma taas sisältää joko
tyypin t1 tai t2, joten sen muodostukseen on konstruktorit. Binääristä summasta arvo saadaan
ulos case analyysillä.

Taas kerran ovat myös nullaryt ja binäärit vain erikoistapauksia yleisemmästä rajatusta summasta.
Rajatussa summassa voidaan pelkän voidin tai binäärisen summan sijaan muodostaa summia, jotka
ovat mielivaltaisen rajatun kokonaisluvun kokoisia.

Void tyyppi on itselleni aiemminkin aiheuttanut hieman sekaannusta. Kirjassa sitä selitetään
siten, että void on tyyppi, jolla ei koskaan voi olla arvoa. Siten, jos lausekkeen tyyppi olisi
void, täytyy olla että lauseke ei tule koskaan saamaan arvoa. Lisäksi, kuten kirjassakin mainitaan,
sen kanssa aiheuttaa sekaannusta eri kielten eri käsitykset. Esimerkiksi C-kielen void tyyppi vastaisi
kirjan määritelmien mukaan unit tyyppiä, koska se indikoi, että lausekkeella ei ole mitään
kiinnostavaa arvoa. Siis toisin kuin void, joka vastaa sitä että lausekkeella ei ole arvoa ollenkaan.

Tiedostossa [koodit/Sum.hs](koodit/Sum.hs) on malliesimerkkejä ja lisäpohdintoja.

Seuraavaksi [pattern matching](05-07-2020-pattern-matching.md).
