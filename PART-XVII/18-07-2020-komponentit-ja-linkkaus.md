# Komponentit ja linkkaus

Nyt päästään käsittelemään ohjelmien modulaarisuutta
komponenttien ja linkkauksen kautta.
Komponentit ovat itsenäisiä ohjelman osia, joita muodostamalla
saadaan laajempia kokonaisuuksia. Niiden tarkoituksena on mm. edesauttaa
koodin uudelleenkäyttöä ja luotettavuutta. Kirjassa komponenttien ajatusta
rinnastetaan matematiikkaan: matematiikassa voidaan muodostaa erillisiä
lemmoja/todistuksia, joilla on riippuvuuksia muiden todistusten kanssa ja
joita yhdistämällä voidaan muodostaa uusi todistus. Samalla tavalla
voidaan komponentteja yhdistelemällä muodostaa laajempia ohjelmia.

Komponenttien yhdistys tapahtuu rajapinnan kautta. Rajapinta määrittelee
toiminnot, jotka rajapinnan toteuttajan on tarjottava ja joita rajapinnan
käyttäjä voi hyödyntää. Esimerkkinä rajapinnan edistyneessä muodossa käytetään
[eksistentiaaleja tyyppejä](../PART-VII/07-07-2020-eksistentiaalit-tyypit.md).
Niiden etuna [product-tyypeillä](../PART-IV/04-07-2020-product-tyypit.md)
esitettyyn rajapintaan on tiedon piilottamisen mahdollisuus
(käyttäjälle näkymättömän tyyppimuuttujan avulla).

Kirjalle ominaisesti komponentit, rajapinnat ja linkkaus esitellään
tuttujen konseptien eli tyyppien ja muuttujien vaihdon avulla.
Ohjelman linkkaaminen muuttujan vaihdon avulla on ainakin itselle hyvin
luonnollinen tapa ajatella ja vastasi jokseenkin ennalta omaa mielikuvaa.
Rajapinnan tyypitys taas on selkeä, jos ajatellaan oliotyyppisesti. Funktionaalisesta
näkökulmasta rajapinnan määrittely tyypityksen avulla on kuitenkin hieman erikoisempi.
Tässä auttaa jo aiemmin toteutettu [koodiesimerkki](../PART-VII/koodit/Exist.hs) eksistentiaalisista tyypeistä.
Näillä voidaan muodostaa hyvin "oliomainen" rajapinta, joka piilottaa toteutuksen
sen käyttäjiltä. Ehkä selkeämpi funktionaalinen ajatusmalli itselle olisi kuitenkin
ajatella rajapintoja erillisten moduulien kautta, jotka tarjoavat käyttäjille
osan toiminnoistaan. Tämä vastaisi jokseenkin kirjan product-tyyppien rajapintaa.

Seuraavaksi [tyyppiluokat](18-07-2020-tyyppiluokat.md).
