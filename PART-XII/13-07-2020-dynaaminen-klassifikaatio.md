# Dynaaminen klassifikaatio

Aiemmin käsitellyssä
[dynaamisessa lähetyksessä](../PART-IX/09-07-2020-dynaaminen-lahetys.md)
voidaan päätös siitä, minkä luokan metodia kututaan tehdä dynaamisesti
eli ajonaikaisesti. Tällöin kuitenkin on käännösaikana edelleen tiedossa
tyypityksen perusteella kaikki luokat, joihin on objektin mahdollista kuulua.
Dynaamisen klassifikaation avulla voimme jatkaa tätä konseptia niin, että
myös päätös siitä mihin luokkiin objekti voi kuulua, tehdään dynaamisesti.

Tämän mahdollisuuden mukaan tuomisella on useita kiinnostavia seurauksia.
Kirjassa esitellään erityisesti kolme mahdollista käyttötarkoitusta, jotka
dynaamisen klassifikaation avulla saadaan. Ensimmäisenä ja selkeimpänä on
laajennettavuus, joka saadaan uusien luokkien määrittelyllä suoritusaikana
sekä niihin liittyvien metodien käyttäytymisen määrittelyllä.

Toisena esitellään dynaaminen klassifikaatio salausmekanismina, jossa
taataan, että tiettyihin arvoihin ei voida päästä käsiksi ilman niihin
liittyvää avainta. Tässä avaimet ovat pattern match funktioita, jotka
luodaan samalla kun luokka määritellään. Nyt jos ei ole saatavilla
luokkaan liittyvää funktiota, ei ole myöskään mahdollista päästä käsiksi
sen sisältämään dataan, jolloin voidaan sen ajatella olevan salattua.

Kolmantena esitellään hyödyt
[poikkeustenkäsittelyssä](../PART-X/10-07-2020-poikkeukset.md), johon
liittyvässä muistiinpanossa jo ohimennen dynaamiseen klassifikaatioon
viitattiinkin. Siinä määritellään uusi luokka, jossa mahdollisuus 
siihen liittyvien instanssien luontiin annetaan vain virheiden
nostajalle ja instanssiin viittaaminen ainoastaan virheiden käsittelijälle.
Näin ollen mikään muu kuin annettu käsittelijä ei voi virhettä käsitellä,
koska ne eivät siihen pääse käsiksi.

Seuraavaksi PART-XIII ja [modernisoitu Algol](../PART-XIII/14-07-2020-modernisoitu-algol.md).
