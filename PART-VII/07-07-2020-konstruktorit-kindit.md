# Konstruktorit ja kindit

Seuraavana esitellään konstruktorit ja niitä luokittelevat kindit.
Vaikka olen itsekin tainnut muistiinpainoissa jo puhua konstruktoreista,
ei kirjassa niitä itseasiassa vielä oltu esitelty. Tästä voidaan
huomata miten varsinaisten konstruktorien käyttö ei sinänsä ole välttämätöntä
ja että samoja konsepteja voidaan kuvailla ilmankin. Kirjassa aiemmin esiteltiinkin
[tyypittömästä lambda-calculuksesta](../PART-VI/06-07-2020-tyypiton-lambda.md)
kertovassa kappaleessa Church enkoodaus, joilla tietotyyppien kuvaaminen on mahdollista.

Tyyppikonstruktoreja voidaan ajatella siten, että ne muodostavat uusia tyyppejä
liittämällä tyyppikonstruktoreihin argumentteja. Kirjassa näistä esitellään esimerkit,
joissa mm. "nat" voidaan ajatella muodostettavan pelkällä konstruktorilla ilman argumentteja
ja "nat list" konstruktorilla, joka vaatii yhden argumentin.

Tyyppikonstruktoreista puhuttaessa tulee muistaa erot data konstruktoreihin. Data konstruktorit
vastaavat arvoja, joilla on jokin tyyppi eivätkä itsessään ole tyyppejä. Tyyppikonstruktorit taas
vastaavat itse tyyppejä eikä niitä voi suoraan käyttää esim. lausekkeissa.

Tiedostossa [koodit/Kinds.hs](koodit/Kinds.hs) on lisää pohdintaa sekä esimerkkejä.

Seuraavaksi: PART-VIII ja [subtyypitys](../PART-VIII/08-08-2020-subtyypitys.md).
