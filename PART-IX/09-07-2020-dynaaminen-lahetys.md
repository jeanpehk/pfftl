# Dynaaminen lähetys

Kirjan mukaan voimme joskus jakaa tyyppien arvot erillisiin luokkiin, joilla
on oma struktuurinsa. Näihin luokkiin voidaan myös liittää
niiden instanssien arvoilla toimivia metodeja. Nyt metodi lähettää
(dispatch) argumentin luokan perusteella ja jos tämä päätös tehdään ajonaikaisesti,
on kyseessä dynaaminen lähetys (dynamic dispatch). Määritelmä vastaa siis aika lailla
tyypillistä luokkien toteutusta olio-ohjelmointia tukevassa kieliessä.

Kirjassa on mielestäni tähän mennessä pyritty välttämään selkeitä viittauksia paradigmoihin tai
yksittäisiin kieliin (poislukien ehkä luonnollisesti ML, jonka kehityksessä
Harper on ollut mukana), mutta nyt käsiteltävä dynaaminen lähetys vaikuttaa
ensimmäiseltä selkeästi olio-ohjelmoinnille keskeiseltä käsitteeltä. Tähän viitataan
lyhyesti myös kappaleen lopun "Notes" osiossa. Muut esimerkit ovat kuitenkin, huolimatta siitä, että
paradigmoja ei ole mainittu, usein olleet helpommin ajateltavissa funktionaalisen ohjelmoinnin kautta.
Tämä johtuu esimerkkien luonteesta ja siitä millaista toiminnallisuutta kirjassa suositaan
(esimerkiksi muuttujien toiminta).

Funktionaalisesti katsottuna dynaaminen lähetys muistuttaa hyvin vahvasti jo
aiemmin toteutettua [koodiesimerkkiä](../PART-VII/koodit/Exist.hs) PART-VII:n
[eksistentiaaleista tyypeistä](../PART-VII/07-07-2020-eksistentiaalit-tyypit.md).
Esim. Haskelin tyyppiluokat taas eivät vastaa samaa asiaa, sillä niissä voidaan
tehdä tyyppipäätökset jo käännösaikana.

Ehkä kiintoisimpana pointtina kappaleessa on Harperin esilletuoma yhtäläisyys
[sum tyyppien](../PART-IV/04-07-2020-sum-tyypit.md),
[product tyyppien](../PART-IV/04-07-2020-product-tyypit.md)
ja funktio tyyppien kanssa. Harperin mukaan dynaamisen lähetyksen
ominaisuudet nousevat näiden edellämainittujen laajempien konseptien instansseina. 
Näin ollen voidaan taas huomata, kuten esim. Church enkoodausten kanssa, miten
yksinkertaisista ja hyvin ilmaisukykyisistä konsepteista voidaan rakentaa
laajoja kokonaisuuksia.

Seuraavana [perintä](10-07-2020-perinta.md).
