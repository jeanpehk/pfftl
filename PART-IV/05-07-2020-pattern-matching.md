# Pattern matching

Pattern matchingilla voidaan kirjassa esitettyjen [product tyyppien](04-07-2020-product-tyypit.md)
ja [sum tyyppien](04-07-2020-sum-tyypit.md) eliminoinnit yleistää "match" operaattorilla.
Argumenttina matchille annetaan lauseke ja joukko sääntöjä, johon sitä verrataan.
Suoritettava lauseke valitaan valitsemalla ensimmäinen sääntö, joka vastaa argumenttina olevan
lausekkeen rakennetta.

Määritelmissä voidaan mielenkiintoisena huomata erona aikaisempiin se, että nyt on meillä
käytössä huomattavasti myös muita lajikkeita Exp:n lisäksi. Nyt pattern kieleen on lisätty
sääntöjä (Rules), sääntö (Rule) ja  pattern (Pat). Patterneja voi käyttää säännön luomisessa
ja siten ne liitetään induktiivisesti myös sääntöihin ja lausekkeeseen operaattoria match käytettäessä.
Samalla tyypit on poistettu kokonaan, mikä aiheuttaa itselle hieman hämmennystä määritelmissä 13, joissa
tehdään johtopäätöksiä patternien p tyypeistä. Oletankin, että tässä on ideana vain jatkaa PART IV:n aikaisemmista
tyyppimääritelmistä, vaikka ne onkin jätetty merkitsemättä.

Tiedostossa [koodit/Pattern.hs](koodit/Pattern.hs) on lisää pohdintoja ja kokeilua pattern matchingista.

Seuraavaksi PART-V ja [induktiiviset tyypit](../PART-V/05-07-2020-induktiiviset-tyypit.md).
