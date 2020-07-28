# Propositiot tyyppinä

Edellisessä muistiinpanossa käsitelty
[konstruktiivinen logiikka](12-07-2020-konstruktiivinen-logiikka.md)
voidaan yhdistää ohjelmointikielten kanssa. Tätä yhdistämistä edustaa
propositiot tyyppinä -prinsiippi (propositions as types), jossa
konstruktiivisen logiikan propositiot voidaan esittää tyyppeinä ja
todistukset ohjelmina (ja vastaavasti toisinpäin). Kirjan mukaan tämä
yhteys on ohjelmointikielten teorian kivijalka, joka paljastaa syvän
yhteyden laskennan ja päättelyn välillä.

Konkreettisena esimerkkinä tästä yhteydestä voidaan esittää
implikaatio funktio tyyppinä, konjunktio [product tyyppinä](04-07-2020-product-tyypit.md)
ja disjunktio [sum tyyppinä](04-07-2020-sum-tyypit.md).
Tämän yhdistämisen seurauksia voidaan nähdä
myös esimerkiksi teoreema todistajissa, joissa propositioita voidaan
todistaa ja formalisoida ohjelmien avulla.

Olen aiemmin kuullut tästä yhteydestä puhuttavan mm.
[Curry-Howard korrespondenssina](https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence)
ja hieman ihmettelin sen puuttumista. Kirjassa tälle annetaan kappaleen lopun "Notes" osiossa
perusteluna se, että termi laiminlyö muiden (mm. de Bruijn, Martin-Löf, Girard, Kolmogorov)
merkittäviä kontribuutioita.

Propositiot tyyppinä ajatusta voidaan myös laajentaa kattamaan kategoriateoria (category theory).
Tätä yhteyttä on Harper itse kutsunut "laskennalliseksi trinitarianismiksi" (computational trinitarianism).
Hänen mukaansa tässä yhteydessä logiikka, kielet ja kategoriat voidaan kaikki käsittää eri muotoina yhdestä ja
samasta konseptista eli laskennasta. Näin ollen on merkityksetöntä mitä näistä kolmesta käytämme idean
kuvaamiseen, sillä se voidaan kääntää muihin muotoihin. Lisäksi hänen esityksensä mukaan, jos tehdään
löytö jossakin näistä kolmesta siten, että sillä on merkitys myös muissa, on tehty todellinen tieteellinen
löytö, joka kestää aikaa. Tätä yhteyttä ei esitetä kirjassa, mutta Harper käsittelee sitä mm.
[blogissaan](https://existentialtype.wordpress.com/2011/03/27/the-holy-trinity/).

Käsitellään seuraavaksi matematiikassa yleisemmin implisiittisenä perustana olevaa
[klassista logiikkaa](12-07-2020-klassinen-logiikka.md).
