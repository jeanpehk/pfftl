# Hypoteettiset päätelmät

Hypoteettiset päätelmät kertovat millä ehdoilla tietyt päätelmät voidaan saavuttaa.
Hypoteettisia päätelmiä on kahdentyyppisiä: johdettavuus (derivability) ja hyväksyttävyys (admissibility).

Johdettavuutta katsoessa voi huomata, että ne vastaavat hyvin pitkälti propositionaalisen
logiikan luonnollisen päättelyn tuloksien merkintää.
Esimerkiksi, jos C on pääteltävissä olettaen, että A ja B pätee, voidaan päätelmää
säännöillä R merkitä kutakuinkin: A, B |-R C (R tulisi olla "alaviitteenä",
mutta perus markdown ei taida taipua vastaavaan).
Johdettavuuspäätelmiä voidaan käyttää esimerkiksi merkitsemään [induktiivisesta määritelmästä](27-06-2020-induktiivinen-maaritelma.md)
johdettuja päättelyitä.

Hyväksyttävyys on hypoteettisen päätelmän heikompi versio. Sen merkintä taas muistuttaa huomattavasti
prepositiologiikan [Tarskin totuusmääritelmän](https://fi.wikipedia.org/wiki/Predikaattilogiikka#Semantiikka)
merkintöjä. Merkitykseltään se on kuitenkin selkeästi erilainen. Hyväksyttävyyspäätelmässä voidaan päätelmän
olettaa olevan pääteltävissä, jos kaikista sen oletuksien päätelmistä voidaan sääntöjen R avulla johtaa johtopäätös J.
Esimerkiksi, jos kaikista A:n ja B:n päätelmistä säännöillä R voidaan johtaa C, voitaisiin merkitä: A, B |=R C.

Johdettavuus ja hyväksyttävyys eroavat toisistaan mm. sen osalta miten niihin voidaan lisätä oletuksia.
Johdettavuuspäätelmissä voidaan huoletta lisätä oletuksia, sillä jos voidaan tehdä johtopäätös C oletuksesta
A, niin voidaan se tehdä myös oletuksista A ja B. Hyväksyttävyyspäätelmissä taas oletuksien lisäämisellä
on merkitystä, sillä jos A on johdettavissa säännöistä R oletuksella A, mutta ei oletuksella B, niin tällöin
johdettavuuspäätelmässä A, B |=R C ei voida sanoa mitään päätelmästä C (koska toinen oletuksista ei päde ja siten
voidaan päätellä mitä tahansa), mutta johdettavuuspäätelmän A |=R C johtopäätöksen C voidaan sanoa pätevän.

