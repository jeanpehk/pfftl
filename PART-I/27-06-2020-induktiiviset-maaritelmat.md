# Induktiiviset määritelmät

Induktiivisissa määritelmissä joukosta sääntöjä muodostetaan päätelmiä.
Määritelmiä katsoessa voi huomata, että ne muistuttavat huomattavasti logiikan
luonnollista päättelyä: viivan yläpuolella on säännön "alkutilat" ja alapuolella päätelmä.
Näitä sääntöjä yhdistelemällä voidaan muodostaa kokonaisia määritelmiä, kuten kirjassa tehdään
esimerkiksi luonnollisten lukujen kohdalla. Samoin heti voi huomata yhteyden funktionaalisten kielten
pattern matchingiin.

Matemaattisesti itselle jää hieman epäselväksi mihin järjestelmään nämä kirjan määritelmät tulisi yhdistää.
Kuten sanottua, induktiiviset määritelmät muistuttavat huomattavasti logiikasta. Lisäksi olettaisin kirjassa
käsiteltävän ideoita myös tyyppiteoriasta ja kenties todistusteoriasta. Paluu kirjan johdantoon kertoo, että
kirjassa ensimmäisen osan matemaattiset määritelmät esitellään loogisena kehyksenä. Näin ollen tässä vaiheessa lukemista
olettaisin olevan selkeintä ajatella määritelmiä logiikkaan pohjautuvana järjestelmänä, johon tullaan liittämään ajatuksia
mm. tyyppiteoriasta.

Induktiivisissa määritelmissä voi osoittaa päätelmän olevan pätevä johtamalla se annetuista säännöistä. Päätelmiä voi
johtaa eteen- tai taaksepäin johtamalla. Toisin sanoen aloittamalla joko aksioomista tai johtopäätöksestä. Kirjan mukaan
kaikki mahdolliset säännöt huomioimalla voidaan aina saavuttaa johtopäätös, joka on järjestelmästä
johdettavissa. Näin ollen järjestelmän tulisi olla oman ymmärrykseni mukaan logiikan termejä noudattaen täydellinen.
Kirjan mukaan ei kuitenkaan ole algoritmista tapaa määritellä, että johtopäätös ei ole johdettavissa järjestelmästä.

Koska induktiiviset määritelmät mahdollistavat ominaisuuksien todistamisen induktiivisesti, herää muutamia mietteitä
myös todistuksesta ohjelmointikielissä. Tätä loogista kehystä noudattamalla selkeästi voidaan todistaa ominaisuuksia 
ohjelmointikielestä matemaattisesti. Samoin jo funktionaalisen ohjelmoinnin kurssilla opittiin todistamaan ominaisuuksia
pattern matchingia käyttävistä funktioista. Koska pattern matching muistuttaa selkeästi induktiivisia määritelmiä,
on mielenkiintoista, että esim. Haskelissa ei voida todistaa ominaisuuksia suoraan kielen avulla. Sen verran tiedän, että
suoraan ohjelmointikielessä todistaminen vaatisi riippuvasti tyypitettyjä (dependently typed) ohjelmointikieliä ja jonkin verran
olen niitä testaillutkin. Mitä riippuvasti tyypitetty käytännössä tarkoittaa ja mikä on sen ero esimerkiksi Haskellin
tyyppijärjestelmään verrattuna, on kuitenkin itselleni epäselvää ja tähän tulisi palata myöhemmin, jos se ei kirjan lukemisen
aikana selviä.

Tiedostossa [koodit/nat.v](koodit/nat.v) on esimerkkitoteutus kirjan luonnollisia lukuja vastaavasta esimerkistä.

Seuraavaksi: [hypoteettiset päätelmät](27-06-2020-hypoteettiset-paatelmat.md).
