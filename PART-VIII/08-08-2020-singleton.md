# Singleton

Singletonit liittyvät vahvasti aiemmin käsiteltyihin
[konstruktoreihin ja kindeihin](../PART-VII/07-07-2020-konstruktorit-kindit.md).
Singletonien käsite johdetaan loogisesti esittämällä ongelma ja tarjoamlla
singletonit luonnollisena ratkaisuna siihen.

Esimerkkinä käytetään muuttujien sidontaa let-lauseilla, joka pystytään
kuvamaan myös [korkeamman asteen funktioilla](../PART-III/03-07-2020-korkeamman-asteen-funktiot.md).
Luonnollisesti sama muuttujien sidonta haluttaisiin nyt esittää myös tyyppitasolla.
Tämä ei kuitenkaan toimi vastaavasti käyttämällä tyyppiabstraktiota ja -applikaatiota.
Ongelmana tässä tulee tieto, jota saadaan irti tyyppimuuttujasta. Jotta jatkettaisiin
samoilla periaatteilla mitä kirjassa on esitetty, tulisi lausekkeen olla määriteltävissä
pelkästään sen tyyppimuuttujan tarjoamien tietojen perusteella. Tyyppimuuttuja kuitenkin
kertoo vain itsensä *kindin*. Tällöin esimerkiksi [product](../PART-IV/04-07-2020-product-tyypit.md)
ja [sum](../PART-IV/04-07-2020-sum-tyypit.md) -tyypeillä voi olla
sama kind, jolloin ei tiedetä mitkä operaatiot tyyppiabstraktion lausekkeessa on suoritettavissa.

Ratkaisuna tähän tarjotaan singletonit. Singletonit mahdollistavat tyyppimuuttujan
*identiteetin* selvittämisen käännösaikana. Tyyppiabstraktio voitaisiin
nyt esittää lausekkeena "Lam(t::S(tau).e)[tau]" aiemman lausekkeen "Lam(t.e)[tau]" sijaan.
Singleton S(tau) esitellään riippuvana kindina tai vaihtoehtoisesti kindien perheenä (family of kinds), josta voidaan indeksoida
yksittäisiä instansseja niiden konstruktorien avulla.

Riippuvan kindin käsite pistää ajattelemaan taas jo hieman aiemmin pohdittua riippuvaa tyypitystä.
Haskelissa singletoneja onkin käytetty mallintamaan riippuvan tyypityksen tekniikoita: [https://github.com/goldfirere/singletons](https://github.com/goldfirere/singletons).

Koitetaan taas vielä selventää ajatuksia
koodiesimerkkien kautta: [koodit/Sing.hs](koodit/Sing.hs).

Seuraavaksi PART-IX ja [dynaaminen lähetys](../PART-IX/09-07-2020-dynaaminen-lahetys.md).
