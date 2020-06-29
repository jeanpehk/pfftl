# Statiikka

Ohjelmointikielet erotellaan yleensä staattiseen ja dynaamiseen vaiheeseen.
Käsitellään ensin staattinen vaihe, joka koostuu kielen jäsentämisestä ja
tyypintarkastuksesta ja jonka tarkoituksena on varmistaa, että ohjelma
on hyvin muodostettu (well-formed). Staattisen vaiheen määrittelee statiikka
(statics), joka on kokoelma sääntöjä joiden mukaan voidaan tehdä tyypityspäätelmiä.

Kielen syntaksin osalta olennaisena kirjassa pidetään abstraktia syntaksia ja
kirjan mukaan sen tulisikin olla kielen virallinen esitysmuoto (eikä siten esim.
kielen standardi). Kuitenkin pidettiin tärkeänä antaa myös jonkinlainen konkreettinen
esitysmuoto, jotta syntaksin esitysmuoto olisi selkeämpi. Tämän vuoksi kirjassa
käytetään esimerkkinä syntaksikarttaa (syntax chart), joka yhdistää molemmat.

Esimerkkikielen syntaksikarttaa (kpl 4.1) tarkkaillessa tulee huomata, että se ei
vastaa esim. kääntäjien perinteisiä syntaksimääritelmiä eikä se itsessään
vielä anna tarkkoja rajoituksia sille miten vaikkapa lausekkeita voidaan
yhdistää. Tämä voidaan huomata esim. kirjan syntaksikartan esimerkistä,
jossa "Exp e":n yhdeksi abstraktiksi formiksi määritellään "len(e)".
Tässä voisi intuitiona olla heti, että len-operaattoria voitaisiin
käyttää kaikille lausekkeille e. Statiikan säännöt (eli tyypityssäännöt) määriteltäessä
kuitenkin huomataan, että sille annetaan tarkemmat rajoitukset (4.1g):
johtopäätöksenä len-operaattorin voi tehdä vain, jos voimme tehdä
johtopäätöksen "e : str" (e on tyyppiä str) tämänhetkisestä tyyppikontekstista.
Kirjan määritelmän mukaan kielen tyypitysjärjestelmän tarkoituksena onkin
asettaa rajoituksia lausekkeille, jotka ovat riippuvaisia siitä missä
ympäristössä ne esiintyvät.

Tehdään nyt esimerkin vuoksi määritelmä omalle kielelle vastaavasti kuin kirjassa.
Kieli on tarkoituksella hyvin yksinkertainen ja lähes vastaava kuin kirjan esimerkissä.
Tarkoituksena on lisätä ominaisuuksia kunhan kirjassa niitä esitellään ja tehdä
jonkinlainen konkreettinen toteutus myöhemmin.
Esimerkki oman kielen [syntaksikartasta](kaavat/syntaksikartta.pdf) ja
[tyyppijärjestelmästä](kaavat/tyyppijarj.pdf)
Esimerkit kirjoitettua huomataan, että tyyppijärjestelmässä jokaisen lausekkeen
abstraktille muodolle annetaan tapa, jolla se voidaan muodostaa. Osa näistä
ovat aksioomia, eli ne voidaan muodostaa ilman hypoteeseja.
Tyyppijärjestelmän säännöt muodostetaan
[geneerisistä induktiivisista määritelmistä](28-06-2020-geneeriset-induktiiviset-maaritelmat.md).

Seuraavaksi käsitellään [dynamiikkaa](29-06-2020-dynamiikka.md).
