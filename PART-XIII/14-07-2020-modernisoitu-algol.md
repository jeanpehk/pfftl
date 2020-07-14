# Modernisoitu Algol

Kuten [dynaamiseen lähetykseen](../PART-IX/09-07-2020-dynaaminen-lahetys.md) liittyvässä
muistiinpanossa jo mainittiin, on kirjassa vältelty tietyistä kielistä tai
ohjelmointiparadigmoista puhumista. Kuitenkin tähän mennessä suurin osa
esimerkeistä on kattanut hyvin pitkälti funktionaalisille ohjelmointikielille
tyypillisiä toteutuksia. Nyt siirrytään ensimmäistä kertaa selkeästi imperatiiviseen
ja lohkorakenteiseen kieleen ja samalla saadaan parempi käsitys
[yleisissä päätelmissä](../PART-I/28-06-2020-yleiset-paatelmat.md) esille nostetusta
pohdinnasta imperatiivisten kielten muuttujien esittämisestä tässä loogisessa
kehyksessä. Määritelty modernisoitu Algol on aiemmin kirjassa esitellyn PCF:n
laajennos väitelauseilla ja yhdellä uudella tyypillä sekä lausekkeella.

Kuten aiemmin arveltiinkin, ei muuttujan käsite sellaisenaan sovellu imperatiiviseen
kieleen. Tässä malliesimerkissä kirjassa tehdään tarkka erotus muuttujien (kirjan
määritelmän mielessä) ja asennettavien (assignables) välillä. Tässä asennettavat
vastaavat tyypillisten imperatiivisten kielten muuttujien käsitettä, eli ne esitellään
deklaraation avulla ja niille annetaan merkitys sijoituksen ja niiden sisällön haun avulla.

Kielessä erotellaan muuttujien ja asennettavien lisäksi tarkasti myös puhtaat
(pure) lausekkeet sekä epäpuhtaat (impure) komennot. Tämä johtuu myös muuttujien ja
asennettavien välisestä suhteesta, sillä puhtaiden lausekkeiden merkitys ei riipu
asennettavista kun taas epäpuhtaat komennot saavat merkityksensä niistä.
Etuna puhtaiden lausekkeiden säilyttämisessä on mm. se, että lausekkeen evaluointijärjestys
ei ole rajoitettu asennettavien käyttäytymisen vuoksi.

Määritelmistä voidaan huomata kaksi kiinnostavaa pointtia aikaisempiin esimerkkeihin verrattuna.
Ensinnäkin keskitytään väitelauseiden tyypitykseen. Tähän näkökulmaan kiinnitin itse ensimmäisen
kerran tarkemmin huomiota kääntäjää toteuttaessa, jolloin tulin siihen tulokseen, että väitelauseilla
ei ole tyyppejä. Tässä määritelmässä kaikki väitelauseet ovat tyypitettyjä, toisaalta ne ovat myös kaikki
samaa tyyppiä. Kirjassa esimerkiksi [tyypittömää lambda-calculusta](../PART-VI/06-07-2020-tyypiton-lambda.md) käsiteltäessä tehtiin huomio, että
kaikki tyypittömät kielet ovat itse asiassa yhtä ja samaa tyyppiä. En ole nyt aivan varma voitaisiinko
tässä ottaa sama näkökulma väitelauseita vastaan (kuten kirjassa otettiin dynaamisen tyypityksen kohdalla).
Toki väitelauseet ovat vain osa kielestä, mutta imperatiivisessa kontekstissa voidaan niiden merkitystä pitää
hyvin huomattavana. Tyypityksen heikkous voidaan nähdä myös kielen [statiikan](../PART-II/29-06-2020-statiikka.md)
määrittelystä, jossa tyypityspäätös tehdään vasta kaikki kattavan "cmd" päätelmän kohdalla. Muut
säännöt käsittelevät vain sitä, onko väitelauseet hyvin muodostettuja.

Tähän tuodaankin muutos kielen toisessa laajennetussa versiossa. Siinä lisätään tyypitykset
väitelauseisiin ja tuodaan esille mobiilien (mobile) tyyppien käsite. Mobiileissa tyypeissä
tyypityksen arvo eri riipu mistään tietystä aktiivisesta muuttujasta, mikä mahdollistaa sen
käytön imperatiivisessa kielessä.

Tyypityshuomion ja mobiilin tyypin lisäksi joudutaan kieleen lisäämään muistin käsite asennettavien
toteuttamista varten. Tätä ei sinänsä voi suuremmaksi haitaksi sanoa, lähinnä vain matemaattisesta näkökulmasta
tällöin suosisi mieluummin yksinkertaisempaa PCF:ää.

Kappaleen lopussa kirjassa annetaan myös mielipide muuttujan käsitteeseen. Siinä harmitellaan
useiden ohjelmointikielten omaksumaa muuttujan käsitteen käyttöä tässä esiteltyjen asennettavien
tilanteessa ja sen aiheuttamaa ristiriitaa ja sekaannusta kirjassa käytetyn muuttujan käsitteen
kanssa. Itse olisin myös samaa mieltä, vaikka erityisesti en terminologiasta välitäkään. Saman
käsitteen käyttäminen kahdessa eri tilanteessa aiheutti ainakin omalla kohdalla ohjelmointia
aloitellessa sekaannusta ja koska asennettavat selkeästi eivät vastaa matemaattista muuttujan
käsitettä, olisi loogisempaa antaa niille erillinen nimi. Toki on huomattava, että ei myöskään
kirjan muuttujan määritelmä täysin vastaa matematiikan muuttujan määritelmää, joten täydellistä
"yliotetta" ei sitä kautta voi saada, mutta selkeästi se on luonteeltaan sille hyvin läheinen.

Seuraavaksi [asennettavat referenssit](14-07-2020-asennettavat-referenssit.md).
