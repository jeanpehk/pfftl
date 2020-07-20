# Tyyppiturvallisuus

Kielen tyyppiturvallisuus pitää huolen siitä, että ohjelman
ajoaikana ei pystytä suorittamaan tiettyjä "vääränlaisia" operaatioita.
Tällainen voisi olla esimerkiksi merkkijonon lisääminen kokonaislukuun.
Lisäksi kirja määrittelee tyyppiturvallisuuden kielen [statiikan](29-06-2020-statiikka.md)
ja [dynamiikan](29-06-2020-dynamiikka.md) yhteneväisyytenä.
Tästä voidaan myös huomata, että tyyppiturvallisuus on täysin
määriteltävissä oleva asia. Esimerkiksi yllä mainitun esimerkin merkkijonon
lisäämisestä kokonaislukuun voitaisiin määritellä kielen tyyppisäännöissä
olevan sallittu operaatio, jolloin kieli edelleen olisi tyyppiturvallinen.

Formaalimmin tyyppiturvallisuus määritellään termien pysyvyys (preservation)
ja kehitys (progress) avulla. Tiivistetysti nämä voitaisiin esittää siten, että
jos kielen tyypitys on pysyvä, niin jokainen ohjelman suorituksen vaihe säilyttää
lausekkeen tyypin. Kehitys taas vastaa sitä, että hyvin tyypitetty lauseke on joko jokin arvo tai
että on olemassa jokin suoritus, jolla lauseke voi siirtyä uuteen tilaan.
Tyyppiturvallisuus saadaan näiden käsitteiden yhdistämisestä.

Pysyvyydestä ensin huomataan näennäinen ristiriita tyypillisten ohjelmointikielten
kanssa. On olemassa esim. paljon operaattoreita (funktioita), jotka
selkeästi muuttavat lausekkeen tyyppiä, kuten vaikkapa double-tyyppisen
arvon muuttaminen int-tyyppiseksi. Nyt palatessa aiemmin tehtyyn
[syntaksikarttaan](kaavat/syntaksikartta.pdf) huomataan, että jos meillä
olisi esim. operaattori, jonka abstrakti muoto olisi "int(e)", voisimme
aivan hyvin määritellä yksinkertaisen tyyppisäännön joka olisi pysyvä ("int(e)" on tyyppiä int kaikilla e).
Tällöin voi meillä aivan hyvin olla esim. double-tyyppinen lauseke argumenttina lausekkeelle "int(e)", jolloin
lauseke on pysyvä. Näin ollen, jos suoritettaisiin muodostettua [abstraktia syntaksipuuta](../PART-I/21-06-2020-ast.md)
säilyisi int-lausekkeen tyyppi normaalisti ja argumenttina ollut double-tyyppinen lauseke
vain suoritettaisiin, jolloin se "katoaisi" suoritettavana olevasta syntaksipuusta ja tulokseksi
jäisi vain koko ajan mukana ollut int-tyyyppinen lauseke. Näin ollen double-tyyppinen lauseke ei muutu
miksikään ja ongelmana onkin ollut vain oma puutteellinen ymmärrys käytetyistä käsitteistä ja niiden tarkkuudesta.

Kirjassa tuodaan esille myös tyyppitarkastuksen puutteita, sillä
tyyppisäännöt eivät ole aina itsessään riittäviä ajonaikaisten virheiden eliminoimiseen.
Tästä annetaan esimerkkinä jakolaskussa nollalla jakamisen tapaus, jossa emme voi
tyyppisääntöjen perusteella niitä eliminoida (ainakaan ilman, että samalla
eliminoitaisiin huomattava määrä ohjelmia). Tämä johtuu siitä, että emme aina voi
käännösaikana tietää, evaluoituuko lauseke nollaksi. Tätä voidaan korjata määrittelemällä
[dynamiikkaan](29-06-2020-dynamiikka.md) tilat, joissa ajonaikaiset tarkistukset on suoritettava. Tällöin voidaan
virheet huomata ja niihin reagoida turvallisesti.

Seuraavaksi PART-III ja [ensimmäisen asteen funktiot](../PART-III/03-07-2020-ensimmaisen-asteen-funktiot.md)
