# Tyypitön lambda calculus

Heti ensimmäiseksi kirjassa tehdään huomautus "tyypittömistä" kielistä.
Sen mukaan erotus tyypittömiin ja tyypitettyihin kieliin on illuusio,
sillä itseasiassa tyypittömät kielet ovat tyypitettyjä kieliä, joissa
on yksi rekursiivinen tyyppi. Näille kielille kirjassa käytetään nimitystä
unityped. Konkreettisena esimerkkinä esitetään lambda calculus, jonka
kehitti Alonzo Church 1930-luvulla. Lambda abstraktiot ovat tuttuja
jo kirjan aiemmista esimerkeistä ja mm. Haskelista, jossa niitä voi käyttää 
anonyymeinä funktioina.

Lambda calculuksessa on lähinnä vain yksi ominaisuus:
[korkeamman asteen funktio](../PART-III/03-07-2020-korkeamman-asteen-funktiot.md).
Niitä voidaan hyödyntää määrittelyjä luomalla, aplikaatiolla sekä muuttujilla.
Huolimatta tästä huomattavasta yksinkertaisuudesta, on se yllättävän ilmaiseva
kielenä. Lambda calculus on Turing täydellinen. Lisäksi kirjassa tuodaan esille
itselleni uusi Churchin laki. Churchin lain mukaan kaikki
ajateltavissa olevat määritelmät laskettavista funktioista luonnollisilla luvuilla
ovat ekvivalentteja lambda calculuksen kanssa. Sen lisäksi, että lain voidaan todeta
pätevän kaikille tiedetyille funktioille, arvioi laki sen pätevän kaikille tuleville
määritelmille laskettavista funktioista.

Tiedostossa [koodit/Lam.hs](koodit/Lam.hs) on yksinkertainen esimerkkitoteutus tyypittömästä lambda calculuksesta.

Seuraavaksi PART VII ja Girardin [System F](../PART-VII/06-07-2020-system-f.md).
