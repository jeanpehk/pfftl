# Yleiset päätelmät

Yleiset päätelmät määrittelevät muuttujien käsittelyn päättelyissä.
Tulee huomata, että kirjassa määritellyt muuttujat ovat verrannollisia
matematiikassa yleisesti käytettyihin muuttujiin, ts. ne ovat ennalta
tuntemattomia objekteja, jotka kuuluvat tiettyyn joukkoon. Täten ne eivät
vastaa yleisesti ohjelmointikielissä käytettyjä muuttujia.

Yleisiä päätelmiä on kahdentyyppisiä: geneerisiä ja parametrisiä.
Geneeriset johdettavuuspäätelmät vastaavat sitä, että päättely
ei ole riippuvainen muuttujan paikalle sijoitetusta nimestä.
Parametriset päätelmät määritellään vastaavasti, mutta niissä
yleistetään muuttujien sijaan parametreja.

Huomionarvoista määritelmissä on se, että kuten jo [abstrakteissa sidontapuissa](21-06-2020-abt.md)
erotellaan muuttujat ja parametrit toisistaan. Muuttujien ja parametrien erottamisen tarpeellisuus
kävi itselläni jo mielessä aikaisemmin keväällä kääntäjää toteuttaessa,
mutta siinä yksinkertaisessa toteutuksessa erottelun totesin tarpeettomaksi (lisäksi tässä
tapauksessa oli muuttujien käsite erilainen kirjan käsitteeseen verrattuna mikä kenties tukisi valintaa).
Kirjan hypoteettisten ja yleisten päätelmien kappaleen lopun huomioihin (3.5 Notes) tutustumalla
keskeisimmäksi perusteluksi erottelulle annetaan se, että parametrien kohdalla on merkityksellistä
erotella tapaukset, joissa ne eroavat toisistaan, kun taas muuttujien kohdalla tämä ei ole tarpeellista.
Lisäksi huomautetaan, että parametrien ja muuttujien erottelemattomuus on useiden virheiden
lähde ohjelmointikielten suunnittelussa.

Hieman epäselväksi itselle jää tässä kohtaa, että miten esimerkiksi imperatiivisten kielten
muuttujien toteutus tässä loogisessa kehyksessä tapahtuisi. Tässä kohtaa olettaisin, että tällöin
muuttujia ei sellaisenaan olisi, vaan ne vastaisivat ennemminkin parametreja. Näin olettaisin, koska tällöin
muuttujien arvoilla olisi merkitystä.

Viimeisenä ensimmäisestä osiosta käsitellään: [geneeriset induktiiviset määritelmät](28-06-2020-geneeriset-induktiiviset-maaritelmat.md).
