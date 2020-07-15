# Laiska evaluointi

Laiskassa evaluoinnissa (lazy evaluation) voidaan lausekkeen
suorittamista siirtää hetkeen, jolloin sitä välttämättä
tarvitaan. Laiskan evaluoinnin vastakohtana on innokas evaluointi
(eager evaluation), jossa lauseke evaluoidaan heti. Innokas
evaluointi voi johtaa tilanteisiin, joissa esimerkiksi
funktion argumentti evaluoidaan useammin kuin kerran
kun taas laiska evaluointi takaa, että laskenta suoritetaan
maksimissaan kerran.

Tässä kohtaa kirjan lukeminen aiheuttaa hieman sekaannuksia.
Selvennetään ensin erillisesti
[nimellä kutsumista ja laiskuutta](15-07-2020-nimella-kutsumisesta-ja-laiskuudesta.md),
jossa päädytään johtopäätökseen, että nimellä kutsuminen
on osa laiskaa evaluointia (laskennan siirtäminen), mutta
ei koko kuva (puuttuu takuu, että laskenta suoritetaan vain kerran).
Tämän jälkeen kuitenkin kirjassa esitetään, että laiskat
kielet suosivat juurikin nimellä kutsumista funktioiden
dynamiikan toteutuksessa ja myös kirjan päivitetyn version
[esikatselu](https://www.cs.cmu.edu/~rwh/pfpl/2nded.pdf)
toistaa saman huomion. Täten täytyy vielä tarkentaa, että
nimellä kutsumisessa (ja muutenkin aiemmin määritellyissä
[dynamiikoissa](../PART-II/29-06-2020-dynamiikka.md))
suoritetaan askelia siihen asti, että saadaan jotkin määritellyt
arvot (val), jossa voi olla useampia samoja laskentoja.
Nyt, jotta saadaan laiskuus, tulee tähän "evaluointivaiheeseen"
vielä lisätä uusi käsite (jota käsitellään seuraavaksi).
Näin ollen voidaan sanoa, että laiskat kielet
suosivat nimellä kutsumista funktioiden dynamiikan toteutuksessa,
se ei vaan itsessään riitä tekemään kielestä laiskaa.

[tarpeen mukainen dynamiikka](15-07-2020-tarpeen-mukainen-dynamiikka.md).
