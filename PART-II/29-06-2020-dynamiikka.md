# Dynamiikka

Ohjelmointikielen dynamiikka määrittelee miten hyvin muodostettu, eli
[statiikan](29-06-2020-statiikka.md) määrittelyt toteuttava, ohjelma tulisi suorittaa.

Dynamiikan (dynamics) määrittelyyn käytetään kirjan mukaan yleensä
rakenteellista dynamiikkaa (structural dynamics), lisäksi esitellään
kontekstuaalinen dynamiikka (contextual dynamics), joka on vaihtoehtoinen
tapa dynamiikan määrittelyyn. Käsitellään tässä yleisempää rakenteellista
dynamiikkaa, joka on käytössä suurimmassa osassa kirjan esimerkeistä.

Rakenteellisen dynamiikan säännöillä voidaan määritellä tavat, joilla
ohjelmassa edetään tilasta toiseen. Tilanmuutokset erotellaan kirjassa
käskysiirtymiin (instruction transitions) ja etsintäsiirtymiin (search transitions).
Käskysiirtymät vastaavat evaluoinnin primitiivistä vaihetta. Tätä voisi yksinkertaisemmin
ajatella esimerkiksi evaluoinnissa konkreettisesti suoritettavina vaiheina. Kirjan
kielessä tämä vastaa mm. luonnollisten lukujen yhteenlaskun suorittamista kun operaattorin
molemmat argumentit on evaluoitu johonkin arvoon. Etsintäsiirtymissä taas määritellään
järjestys, jossa käskyt suoritetaan. Näin voidaan määritellä esimerkiksi operaattorien
suoritusjärjestys (arvioidaanko binäärisessä operaattorissa ensin ensimmäinen vai toinen
argumentti).

Jokaista kielen lauseketta kohti määritellään dynamiikan sääntö.
Näin rakenteellisesti kaikki kielen osat läpikäymällä, saadaan induktiivisesti
määriteltyä kaikki mahdolliset tilanmuutokset kielelle. Tässä tulee kuitenkin
olla tarkkana muutaman huomion kanssa. Esimerkiksi tilanmuutokset tulisi olla
pääteltävissä vain yhdellä tavalla, nimittäin jos yhdestä tilasta voi edetä enemmän
kuin yhteen tilaan, on kieli epädeterministinen. Lisäksi tulee luonnollisesti muistaa
määritellä dynamiikan sääntö jokaiselle kielen lausekkeelle. Sääntö voi olla ilman
tilanmuutosta, jolloin tila on lopullinen, mutta sitä ei saa jättää merkitsemättä sillä
tällöin jää suoritus "jumiin".

Tehdään esimerkin vuoksi yksinkertainen derivaatio kirjassa määritellyn
kielen sääntöjen (5.4) mukaan [abstraktille sidontapuulle](../PART-I/21-06-2020-abt.md)
let(str[b];x.cat(str[a];x)):

  -> cat(str[a];str[b]) (5.4h)
  
  -> str[ab] \(5.4d)

Näin ollaan päästy tilasta let(str[b];x.cat(str[a];x)) tilaan str[ab], joka on ohjelman
lopullinen tila.

Seuraavaksi: [tyyppiturvallisuus](01-07-2020-tyyppiturvallisuus.md)
