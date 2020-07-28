# Korutiinit

Korutiineissa (coroutines) molemmat rutiinit ovat toisistaan riippuvaisia
symmetrisessä suhteessa. Näin ollen kummallakaan niistä ei ole
selkeää päärutiinin tai alirutiinin roolia vaan ne ovat toistensa
vertaisia.

Korutiinien toteutuksessa pääideana on esittää molemmat rutiinit siten,
että ne käsitelevät toisiaan alirutiineina. Korutiini on
[kontinuaatio](11-07-2020-kontinuaatiot.md), joka ottaa argumentteina
laskennan tilan ja toisen samaa tyyppiä olevan korutiinin.
Kirjan määritelmissä korutiini voi antaa suorituksen toiselle korutiinille 
lausekkeella resume. Se ottaa argumentteina taas laskennan tilan ja korutiinin
ja siinä lausekkeen suorituksen jälkeen luodaan uusi korutiini, jonka aloituspiste
on resumen paluupiste. Korutiinin aloittaakseen tulee vain määritellä rutiini r1
siten, että kun se luovuttaa kontrollin rutiinille r2, aloitetaan se tilalla, joka
saatiin rutiinia r1 suoritettaessa.

Selkokielisemmin korutiineilla siis käytännössä voidaan suoritusta tehdä kahdella rutiinilla vuorotellen,
edellisen suorituksen jättämästä tilasta jatkamalla.

Huomattavinta itselle korutiineissa oli tilan käsite. Tämä siksi, että tilaa käsiteltiin
vain yhtenä instanssina, jota "kuljetetaan" jatkuvasti korutiinien mukana. Toki tila
voi muuttua jatkuvasti (eihän tilan käsitettä muuten tarvittaisikaan), mutta tässä ei kuitenkaan
jatkuvasti sotketa monta erillistä tilaa sekaisin tai hypitä tilasta toiseen. Tältä osin
korutiinit muistuttavat hieman esimerkiksi Haskelin State Monadia useammalla suorittajalla
toteutettuna.

Tiedostosta [koodit/Cor.hs](koodit/Cor.hs) löytyy koodiesimerkkejä korutiineista.

Seuraavaksi PART-XI ja [konstruktiivinen logiikka](../PART-XI/12-07-2020-konstruktiivinen-logiikka.md).
