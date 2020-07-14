# Poikkeukset

Poikkeuksilla voidaan käsitellä ohjelmassa harvoin esiin tulevia tiloja siirtämällä
kontrolli toiseen määrättyyn kohtaan (poikkeuksen käsittelijään).

Poikkeukset ovat pelkän [virheen](10-07-2020-virheet.md) käsittelyn yleistys.
Poikkeuksissa virheeseen liitetään arvo, joka mahdollistaa reagoinnin erilaisiin
virheisiin poikkeuksenkäsittelijässä.

Poikkeuksen käsittelyn tavoista esitellään neljä mahdollisuutta. Ensimmäinen on heikoin tapa,
(oma "suosikki" nopeissa väsäyksissä) jossa virheeseen liitetään vain tekstiselostus virheen syystä.
Ongelmana tässä on se, että poikkeuksen käsittelijän on hankala erottaa eri tapauksia
toisistaan merkkijonoon pohjautuvan merkinnän avulla.

Toisena hieman parempana tapana (ja hyvinkin suosittuna) mainitaan virheiden koodaaminen
kokonaisluvuilla. Tällöin virheen valinta on poikkeuksen käsittelyssä helpompaa,
mutta ongelmana on silti se, että nyt tulee olla määrätyt yhteiset säännöt
kokonaislukujen ja virheiden suhteille. Tämä vaikeuttaa moduulien jakoa ja komponenttien
uudelleenkäyttöä. Lisäksi virheisiin ei tällöin voida lisätä lisätietoja,
mitkä auttaisivat poikkeuksen käsittelijää. Tätä tyyliä käytetään mm. Unix-käyttöjärjestelmissä.

Kolmannessa tavassa virheet esitetään [sumtyypeillä](../PART-IV/04-07-2020-sum-tyypit.md).
Tällöin käsittelijän on helppoa valita oikea tapa käsitellä virhe tyyppiturvallisesti.
Nyt ongelmana on kuitenkin vielä se, että virheiden tulee olla täysin ennalta määriteltyjä.
Täten virheiden käsittely ei ole helposti laajennettavissa toisten moduulien kanssa
kehityksen edetessä. Parhaana tapana lopuksi mainitaankin laajennettavat summat, joissa
edellistä tapaa parannetaan siten, että siihen voi lisätä uusia luokkia ajonaikana.
Tätä kutsutaan [dynaamiseksi klassifikaatioksi](../PART-XII/13-07-dynaaminen-klassifikaatio.md)
ja sitä käsitellään vielä lisää myöhemmissä kappaleissa.

Seuraavaksi: [kontinuaatiot](11-07-2020-kontinuaatiot.md).
