# Korkeamman asteen funktiot

Kirjassa korkeamman asteen funktiot (higher-order functions) saadaan muokkaamalla funktiot
lausekkeiksi. Tämä tapahtuu lisäämällä lambda-abstraktiot,
joiden avulla jokaisen funktion määritelmä ja applikaatio voidaan esittää
lausekkeena. Samalla voidaan määritellä funktiotyypit kahden tyypin avulla (argumentti ja applikaation tulos).
Tällöin kielen funktiot ovat ensimmäisen luokan (first-class) funktioita, koska funktiot
itsessään voivat ottaa toisia funktioita argumentteina ja niiden applikaation tuloksena
voi olla funktio (koska funktio on vain lauseke).

Mitä tässä kirjan määritelmässä ensinäkemältä menetetään aiemmin määriteltyihin
[ensimmäisen asteen funktioihin](03-07-2020-ensimmaisen-asteen-funktiot.md)
verrattaessa, on funktioihin viittaaminen niiden määritelmissä esitettyjen nimien avulla.
Olettavasti tämän tulisi kuitenkin olla triviaalisti korjattavissa, sillä
tiedetään, että useissa ohjelmointikielissä korkeamman asteen funktiot voidaan nimetä.
Pienellä pohdinnalla voidaankin todeta, että funktiot ovat itseasiassa täysin nimettävissä
myös jo tässä kielessä. Nimittäin, koska funktiot ovat vain lausekkeita, voidaan ne määritellä
let-lauseiden avulla. Näin ollen niille saadaan aivan hyvin viitattavissa oleva nimi, jota
voidaan käyttää funktion applikaatiossa.

Toisena aluksi puutteena näkyvänä ominaisuutena voidaan tehdä funktioiden argumenteista,
nimittäin funktiot ottavat vain yhden argumentin. Tähänkin on helppo korjaus suoraan
funktioiden määritelmistä (ja funktionaalisesta ohjelmoinnista tutusta currying konseptista).
Koska funktiot ovat vain lausekkeita, voimme antaa funktiolle argumenttina funktion.
Tällöin voidaan muodostaa esimerkiksi seuraava funktio:
lam (x:int) (lam (y:int) y + x). Nyt meillä on funktio, joka ottaa argumenttina luvun ja
palauttaa funktion, joka ottaa argumenttina toisen luvun. Ts. meillä on funktio, joka ottaa
argumenttina kaksi lukua ja antaa tulokseksi niiden yhteenlaskun.

Onkin mielenkiintoista huomata miten laajoja konsepteja toteuttava kieli saadaan näin yksinkertaisten
määritelmien avulla. Tämä saakin pohtimaan miten suuri osa esimerkiksi funktionaalisten kielten toteutuksista
on todellisuudessa pelkkää syntaksia, joka on tiivistettävissä yksinkertaisempaan muotoon.

Seuraavaksi: [Godelin T](03-07-2020-godelin-T.md).
