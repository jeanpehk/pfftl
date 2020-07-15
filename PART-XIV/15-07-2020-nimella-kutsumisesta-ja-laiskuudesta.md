# Nimellä kutsumisesta ja laiskuudesta

Korjataan väärinkäsitys, joka itsellä on ollut
kirjaa lukiessa. Kielien [dynamiikoissa](../PART-II/29-06-dynamiikka.md).
määritellään sääntöjä usein sekä kutsumalla arvon (call-by-value)
että kutsumalla nimen (call-by-name) mukaisesti. Olin itse ollut
siinä uskossa, että nimellä kutsuminen vastaisi laiskaa evaluointia,
koska se mahdollistaa evaluoinnin myöhempää suorittamista. Selvennetään
eroa esimerkin kautta, kielenä lambda calculus luonnollisilla luvuilla:
(\x. x + x) s(n). Nyt arvolla kutsuminen yhden askeleen suorittamisessa
vastaisi lauseketta (\x. x + x) s(n') kun taas nimellä kutsuminen
lauseketta (\x. s(n) + s(n)). Todellakin huomataan, että lausekkeen
laskentaa pystyttiin siirtämään myöhemmäksi, mutta laiskan evaluoinnin
toinen pääperiaate jää toteuttamatta: funktion argumentti s(n) joudutaan nyt
evaluoimaan kahdesti! Nimellä kutsumisen voi siis ajatella olevan osa laiskaa
evaluaatiota, mutta ei vielä riittävä. Sen lisäksi tarvitaan vielä metodi,
joka pitää huolta, että lauseke suoritetaan vain kerran.

Jatketaan [laiskalla evaluoinnilla](15-07-2020-laiska-evaluointi.md).
