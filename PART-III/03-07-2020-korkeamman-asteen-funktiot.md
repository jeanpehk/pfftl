# Korkeamman asteen funktiot

Kirjassa korkeamman asteen funktiot (higher-order functions) saadaan muokkaamalla funktiot
lausekkeiksi. Tämä tapahtuu lisäämällä funktiotyypit ja lambda-abstraktiot,
joiden avulla jokaisen funktion määritelmä ja applikaatio voidaan esittää
lausekkeena. Tällöin kielen funktiot ovat ensimmäisen luokan (first-class) funktioita.

Mitä tässä kirjan määritelmässä menetetään aiemmin määriteltyihin
[ensimmäisen asteen funktioihin](03-07-2020-ensimmaisen-asteen-funktiot.md)
verrattaessa, on funktioihin viittaaminen niiden nimien avulla.
Olettavasti tämän tulisi kuitenkin olla triviaalisti korjattavissa, sillä
tiedetään, että useissa ohjelmointikielissä korkeamman asteen funktiot voidaan nimetä.
Lisäksi määritelmä mahdollistaa funktioiden osittaisen suorituksen ja
funktiotyyppien käyttämisen funktioiden parametreina sekä paluutyyppeinä.
Esimerkiksi tyypin int -> int -> int
funktio voitaisiin esittää seuraavalla määritelmällä:
lambda (x:int) (lambda (y:int) y + x).

Samalla voidaan myös huomata oletettava syy vain yhden argumentin käyttöön funktioiden määrittelyssä.
Nimittäin nyt kaikki useamman argumentin ottavat lambda-abstraktiot voidaan määritellä toisten,
vain yhden argumentin ottavien, lambda-abstraktioiden avulla.

Seuraavaksi: [Godelin T](03-07-2020-godelin-T.md).
