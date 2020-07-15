# Polarisaatio

Polarisaatio jatkaa hieman edellisen kappaleen [suspension](15-07-2020-suspensiot.md)
esittelemistä mahdollisuuksista. Kielissä yleensä on
sisäänrakennettuna mekanismit, joilla tyyppien evaluointia
käsitellään. Lisäksi niiden niiden erilaisia muotoja on useita.
Esimerkiksi tietorakenteet voidaan evaluoida innokkaasti tai laiskasti, funktiot taas
voivat olla [dynamiikaltaan](../PART-II/29-06-dynamiikka.md)
nimellä tai arvolla kutsuttavia. Kirjassa esitellään mielipide,
jonka mukaan tämä evaluoinnin ratkaisu tulisi jättää ohjelmoijan
eikä kielen suunnitelijan vastuulle. 

Tämän subjektiivisuuden ratkaisuna esitellään polarisaatio,
jossa voidaan tyypityksen avulla jättää vastuu evaluointiratkaisusta
ohjelmoijalle. Positiiviset tyypit vastaavat innokkuutta,
tai [induktiivisuutta](../PART-V/05-07-2020-induktiiviset-tyypit.md)
ja negatiiviset laiskaa, tai [coinduktiivista](../PART-V/05-07-2020-coinduktiiviest-tyypit.md).
Lisäämällä vielä tyypit polarisaation muutokselle (polarity shift) ja operaatiot
laskuennan suorittamiselle voidaan laskentaa suorittaa ohjelmoijan
määräämällä tavalla.

Vaikka kielissä on mahdollisuuksia muokata sitä, miten laskenta
toteutetaan (esim. Haskell ja BangPatterns kielilaajennos) en
ainakaan äkkiseltään löydä toteutuksia laajemmin käytössä
olevista kielistä, jossa polarisaatio olisi täysin
sisäänrakennettuna.

Seuraavaksi PART-XV ja
[sisäkkäinen parallelisaatio](../PART-XV/16-07-2020-sisakkainen-parallelisaatio).
