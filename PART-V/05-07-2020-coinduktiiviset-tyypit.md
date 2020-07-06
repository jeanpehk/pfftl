# Coinduktiiviset tyypit

Kohtuullisen selkeiden [induktiivisten tyyppien](05-07-2020-induktiiviset-tyypit.md)
jälkeen coinduktiiviset tyypit aiheuttavat huomattavasti enemmän vaikeuksia.

Selkeänä esimerkkinä kirjassa annetaan streamit, jotka vastaisivat esim. Haskelin listoja.
Pieni [googlettelu](05-07-2020-coinduktiiviset-tyypit.md) kuitenkaan sekoittaa
ajatuksia taas lisää, sillä nyt ei tiedetäkään ovatko Haskelin listat induktiivisia,
coinduktiivisia, molempia vaiko eivät kumpaakaan. Jos ymmärrykseni kuitenkin on oikea
siinä, että esim. [induktiivisten tyyppien](05-07-2020-induktiiviset-tyypit.md) tulisi
olla rajoitettuja, ei Haskelin tyypit voisikaan laiskuuden takia olla induktiivisia.
Joka tapauksessa voidaan kuitenkin muistaa, että selkeästi Haskelin tyyppijärjestelmä mahdollistaa hyvin
samankaltaisten tyyppien luomisen vaikka formaalisti ne eivät täysin vastaavia olisikaan.

Jos coinduktiivisia tyyppejä koitetaan hahmotella intuition avulla kirjojen määritelmien
ja muun lukemisen perusteella päädytään kutakuinkin seuraavaan: coinduktiiviset tyypit
ovat tyyppejä, jonka osat voidaan muodostaa rajatussa ajassa sen eliminaatio muodoista.
Lisäksi coinduktiiviset tyypit mahdollistavat äärettömien tietotyyppien muodostuksen
tyyppijärjestelmältään vaativammissa kielissä kuten Coqissa tai Agdassa.

Seuraavaksi PART-VI ja [tyypitön lambda calculus](../PART-VI/06-07-2020-tyypiton-lambda.md)
