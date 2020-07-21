# Coinduktiiviset tyypit

Coinduktiiviset tyypit ovat [induktiivisten tyyppien](05-07-2020-induktiiviset-tyypit.md)
ohella toinen rekursiivisten tyyppien tärkeä muoto. Coinduktiiviset tyypit eroavat
induktiivisista tyypeistä mm. niiden esittelymuodoissa.
Jos induktiiviset tyypit muodostettiin rajatusta määrästä esittelymuotoja, niin coinduktiiviset
tyypit taas rakennetaan generaattorien avulla.

Esimerkkinä coinduktiivisista tyypeistä tarjotaan streamit, jotka ovat tässä määritelmässä
loputon lista luonnollisia lukuja. Niille saadaan toiminnot hd ja tail, joilla voidaan joko
ottaa listan ensimmäinen alkio tai kaikki muut. Tämä aiheuttaakin hieman sekaannusta verrattaessa
määritelmiä Haskeliin, josta löytyy listoille (jotka voivat myös olla ikuisia) vastaavat funktiot.
Pieni googlettelu paljastaa, että tämä on aiheuttanut keskustelua myös mm.
[stackoverflowssa](https://stackoverflow.com/questions/39854514/are-lists-inductive-or-coinductive-in-haskell),
mutta mielipiteitä tuntuu olevan niin monia, että on vaikeaa saada selkeää vastausta.
Conor McBriden [artikkelin](http://strictlypositive.org/ObsCoin.pdf) mukaan tässä ongelmana vaikuttaisi olevan Haskelin
tarpeen mukaisen dynamiikan (käsitelty myöhemmässä [muistiinpanossa](../PART-XIV/15-07-2020-tarpeen-mukainen-dynamiikka.md)) toteutus.
Kaikki laskenta toteutetaan tarpeen mukaan, mikä mahdollistaa tietyllä tapaa kaiken datan käsittämisen coinduktiivisena, jolloin
induktiivisen ja coinduktiivisen erottaminen ei ole enää kovin mielekästä.

Intuition tasolla itselle on helpointa ajatella coinduktiivisia tyyppejä vertaamalla niitä induktiivisiin,
niiden ollessa tietyllä tavalla toistensa vastakohtia. 
Induktiiviset tyypit muodostetaan "sisältäpäin" rakentamalla yksi kerrallaan laajempaa kokonaisuutta.
Coinduktiivisissa tyypeissä taas aloitetaan "ulkoapäin". Niissä meillä on valmiina laajin mahdollinen kokonaisuus
tyypille (joka on usein loputon), josta sitten voimme lähteä yksi kerrallaan palasia purkamaan.

Coinduktiivisia tyyppejä voi myös ajatella ohjelmien kannalta, joiden ei ole tarkoituskaan lopettaa suoritustaan
(tai suorituksen loppumisaikaa ei ennakolta tiedetä). Tällaisia olisivat esimerkiksi käyttäjän kanssa jatkuvassa
vuorovaikutuksessa olevat ohjelmat. Coinduktiivisten tyyppien avulla voidaan tällöin määritellä luotettavasti
ohjelmalle suoritettavat tehtävät ilman, että tarvitsee huolehtia tulevasta.

Tiedostossa [koodit/coind.v](koodit/coind.v) on yksinkertaisia esimerkkitoteutuksia coinduktiivisuudesta.

Seuraavaksi PART-VI ja [tyypitön lambda calculus](../PART-VI/06-07-2020-tyypiton-lambda.md)
