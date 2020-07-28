# Konstruktiivinen logiikka

Konstruktiivinen logiikka esitellään kirjassa epämääräisesti termillä
"logiikkaa kuin ihmiset merkitsisivät" (logic as if people matter), jonka
olen ennenkin kuullut, mutta joka ei tunnu tietämättömälle ollenkaan avaavan
sen sisältöä. Vastaavasti myöhemmin käsiteltävää [klassista logiikkaa](12-07-2020-klassinen-logiikka.md)
verrataan "jumalan mielen logiikkana" (the logic of the mind of god").
Näihin kuitenkin saadaan selvyys tutustumalla tarkemmin niiden perustoihin.

Konstruktiivinen logiikka käsittelee väitelauseiden totuutta eri tavalla, joskin hyvin
selkeän yksinkertaisesti, kuin normaalisti on klassisen logiikan kautta totuttu.
Konstruktiivisessa logiikassa nimittäin on lause tosi tasan silloin kuin sille on todistus,
ja epätosi silloin kun sille on kumous (refutation).
Tällä yksinkertaisella ja intuitiivisella ajatuksella on useampia mielenkiintoisia seurauksia.
Esimerkiksi klassisessa logiikassa yleiset law of excluded middle (LEM, A \\/ ~ A) ja negaation eliminaatio
(~ (~ A) = A) eivät konstruktiivisessa logiikassa ole valideja.

Tämä aiheuttaa, vasta yliopiston Logiikka-kurssin käyneenä, useampia huomioita. Varsinkin, koska
kyseisiä lauseita käytettiin niin usein todistusten esittämisessä. Esimerkiksi sen, miten ekspressiivinen
voi konstruktiivinen logiikka olla, niin olennaisilta vaikuttavat lauseet poisjättäessään? Kuitenkin
jonkinverran konstruktiiviseen logiikkaan pohjautuviin teoreema todistajiin tutustuneena, voi huomata
miten huomattaviin todistuksiin (esim. [The Four-Color Theorem](http://www.ams.org/notices/200811/tx081101382p.pdf))
niillä on pystytty.

Lisäksi on mielenkiintoista pohtia miten näiden lauseiden epävalidius on johdettu.
LEM seuraa selkeästi konstruktiivisen logiikan perusteista. Jos lause voidaan
osoittaa todeksi vain esittämällä sille todistus ja epätodeksi kumoamalla se,
ei universaalisti voida sanoa lauseen olevan joko tosi tai epätosi. Esimerkiksi
[P vs NP](https://en.wikipedia.org/wiki/P_versus_NP_problem) -kysymyksen ei voida sanoa
olevan tosi tai epätosi, koska sitä ei ole ratkaistu. Tuplanegaatio taas on aluksi
hieman hankalampi. Klassisessa logiikassa sen validius on selkeä: jos epätosi on epätosi,
on se tosi. Tämä seuraa klassisen logiikan totuuden binäärisestä luonteesta. Konstruktiivisesti
~ (~ A) taas vastaisi kutakuinkin seuraavaa: meillä on kumous sille, että A:lle on kumous.
Tästä ei siis seuraa, että A on tosi, vaan ainoastaan että A:ta ei voida kiistää.
Tästä seuraa myös mielenkiintoinen huomio LEM kannalta: konstruktiivinen logiikka ei hyväksy sitä
universaalisti, mutta se ei myöskään kiistä sitä! Ts. ~ (~ (A\\/~A) pätee konstruktiivisessa logiikassa.

Tässä vaiheessa voidaan myös ymmärtää esittelyn termi "logiikkaa kuin ihmiset merkitsisivät".
Nimittäin konstruktiivisessa logiikassa ihmisten tekemät todistukset ovat se, mikä merkitsee.
Toisin kuin klassisessa logiikassa, jossa "jumalan mielen logiikkana" voimme aina tietää, että
väitteelle on olemassa todistus tai kumous, vaikka sitä emme itse osaisikaan näyttää.

Käsitellään seuraavaksi konstruktiivisen logiikan ja ohjelmointikielet yhdistävä
[propositiot tyyppinä](28-07-2020-propositiot-tyyppina.md) -prinsiippi.
