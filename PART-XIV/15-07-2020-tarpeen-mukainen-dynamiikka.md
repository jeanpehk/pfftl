# Tarpeen mukainen dynamiikka

Tarpeen mukaisesssa dynamiikassa funktioiden
evaluoinnissa jokainen laskenta halutaan suorittaa
maksimissaan kerran. Tämä voidaan toteuttaa
memoisaation (memoization) avulla, jossa jokaiseen
laskentaan liitetään symboli, jonka kautta sen arvoon
pääsee käsiksi. Näin ollen laskennat voidaan liittää
symboleihin ja arvoa tarvittaessa voidaan joko
hakea jo aiemmin suoritettu arvo tai (jos laskentaa ei
vielä suoritettu) suorittaa laskenta. Tällöin myös kaikki muut
symboliin liitetyt laskennat saavat tuloksen käyttöönsä.
Funktioiden lisäksi tarpeen mukaiset dynamiikat voidaan
laajentaa samalla tavalla myös tietorakenteisiin.

Seuraavaksi tarpeen mukaisen dynamiikan ajatusen
tuominen tyyppitasolle: [suspensiot](15-07-2020-suspensiot.md).
