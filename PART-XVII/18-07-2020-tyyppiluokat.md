# Tyyppiluokat

Tyyppiluokkia voidaan käyttää rajoitteiden luomiseen.
Tyyppiluokkia voidaan ajatella rajapintoina, jotka eivät, toisin kuin
[eksistentiaalit tyypit](../PART-VII/07-07-2020-eksistentiaalit-tyypit.md),
piilota tyyppi informaatiota sen käyttäjältä.

Tyyppiluokat määrittelevät minimitoiminnot, jotka sen implementoivat
instanssit toteuttavat. Esimerkiksi voitaisiin määritellä tyyppiluokka
Ord, joka takaa, että kaikki sen toteuttavat tyypit ovat järjestettävissä
tietyn funktion avulla. Näin ollen meillä on takaus jostakin, mitä
voidaan käyttäjänä hyödyntää (tässä tapauksessa funktio, jonka avulla
vertailla tyypin jäseniä).

Tässä on huomattava, että tyyppiluokka ei itsessään määrittele uutta
tyyppiä. Se vain kategorisoi jo olemassa olevia tyyppejä kyseisen
tyyppiluokan toteuttaviin ja ei toteuttaviin.

Seuraavaksi PART-XVIII ja
[yhtälöllinen perustelu](../PART-XVIII/19-07-2020-yhtalollinen-perustelu.md).
