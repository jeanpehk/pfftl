# Subtyypitys

Subtyypitys on relaatio tyyppien välillä.
Jos b on tyypin a subtyyppi, tulee olla mahdollista
sijoittaa tyyppi b tyypin a tilalle milloin tahansa
tarvitaan tyyppiä a. Näin ollen säännöiltään se on selkeästi
yksi yksinkertaisimmista tähän mennessä esitellyistä konsepteista.
Tästä huolimatta kirjassa mainitaan, että se on yksi väärinymmärretyimmistä
konsepteista ohjelmointikielissä. Olettaisin tämän johtuvan mm.
virheellisistä vertauksista esim. pelkkään perintään, joka ei vastaa samaa asiaa.
Subtyypityksessä tulee myös huomata, että siinä on
tärkeää miten tyyppi käyttäytyy eikä vain sen sisältämä
näennäinen suhde. Tästä esimerkkinä annetaan mm. kokonaislukujen
ja reaalilukujen suhde.

Subtyypityksen ongelmana mainitaan mm. se, että se aiheuttaa
tietynlaista tyypityksen heikkenemistä. Enää ei voida sanoa, että
jokin lauseke e on "täysin" tyyppiä t tai että lausekkeet e1 ja e2
ovat täysin samaa tyyppiä. Tästä voidaan huomata tietynlaisia yhtäläisyyksiä esim.
moniin dynaamisiin kieliin. Subtyypityksen määritelmästä voidaan myös huomata,
että tyypittömillä (eli yhden tyypin) kielillä ei voi olla subtyypitystä.

Subtyypityksen voi tietyllä tapaa myös ajatella liittyvän polymorfismiin.
Esim. funktioissa voidaan subtyypityksen avulla laajentaa tyyppejä,
joilla sitä voidaan käyttää.

Jos mietitään subtyypitystä taas Haskelin kautta, voidaan huomata että
varsinaista subtyypitystä siitä ei löydy. Lähimmäksi päästään tyyppiluokkien
avulla, mutta nekään eivät konseptina vastaa aivan samaa asiaa. Tämä voidaan
huomata jo siitä, että tyyppiluokka ei itsessään varsinaisesti ole tyyppi
vaan ennemminkin rajoite, joka tyypeille voidaan asettaa. Näin ollen
emme itse tyyppiluokkaa voi käyttää vaikkapa funktion määritelmissä muuten
kuin rajoituksia asettaessa.

Seuraavaksi [singletonit](08-08-2020-singleton.md).
