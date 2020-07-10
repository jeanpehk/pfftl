# Dynaaminen lähetys

Kirjan mukaan voimme joskus jakaa tyyppien arvot erillisiin luokkiin, joilla
on oma struktuurinsa. Näihin luokkiin voidaan myös liittää
niiden instanssien arvoilla toimivia metodeja. Nyt metodi lähettää
(dispatch) argumentin luokan perusteella ja jos tämä päätös tehdään ajonaikaisesti,
on kyseessä dynaaminen lähetys (dynamic dispatch).

Kirjassa on mielestäni pyritty välttämään selkeitä viittauksia paradigmoihin tai
yksittäisiin kieliin (poislukien ehkä luonnollisesti ML, jonka kehityksessä
Harper on ollut mukana), mutta nyt käsiteltävä dynaaminen lähetys vaikuttaa
ensimmäiseltä selkeästi olio-ohjelmoinnille keskeiseltä käsitteeltä. Tähän viitataan
lyhyesti myös kappaleen lopun "Notes" osiossa.

Funktionaalisesti katsottuna dynaaminen lähetys muistuttaa hyvin vahvasti jo
aiemmin toteutettua [koodiesimerkkiä](../PART-VII/koodit/Exist.hs) PART-VII:n
[eksistentiaaleista tyypeistä](../PART-VII/07-07-2020-eksistentiaalit-tyypit.md).
Esim. Haskelin tyyppiluokat taas eivät vastaa samaa asiaa, sillä niissä voidaan
tehdä tyyppipäätökset jo käännösaikana.

Ehkä kiintoisimpana pointtina kappaleessa on Harperin esilletuoma yhtäläisyys
[sumtyyppien](../PART-IV/04-07-2020-sum-tyypit.md),
[product-tyyppien](../PART-IV/04-07-2020-product-tyypit.md)
ja funktiotyyppien kanssa. Harperin mukaan dynaamisen lähetyksen
ominaisuudet nousevat näiden edellämainittujen laajempien konseptien instansseina. 
Näin ollen voidaan taas huomata, kuten esim. Church enkoodausten kanssa, miten
yksinkertaisista ja hyvin ilmaisukykyisistä konsepteista voidaan rakentaa
laajoja kokonaisuuksia.

Seuraavana [perintä](10-07-2020-perinta.md).
