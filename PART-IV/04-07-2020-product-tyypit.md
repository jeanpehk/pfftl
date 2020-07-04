# Product-tyypit

Product-tyypit määritellään kirjassa kahdella tavalla:
rajattujen-productien sekä nullary- ja binääri-produktien avulla.

Nullary- ja binääri-produktit vastaavat määritelmissä tyyppejä
unit ja prod(t1;t2). Unit on vain tyyppi itsessään eikä se vaadi
muita tyyppejä. Prod taas vaatii kaksi tyyppiä t1 ja t2
argumentteina muodostaakseen uuden tyyppinsä. Nämä tyypit
siis vastaisivat käytännössä esim. Haskelissa unit-tyyppiä "()"
ja tuplen avulla muodostettavaa kahden alkion paria "(a, b)".
Samalla tämä selkeyttää Haskelin unit-tyypin käsitettä, sillä näistä
määritelmistä selkeästi huomataan nullary- ja binääri-produktien
läheinen luonne.

Rajatut productit (finite products) yleistävät nullary- ja binääri-produktien
käsitteet siten, että niissä voi prodille olla argumenttina mikä tahansa
rajattu määrä i argumentteja. Näin ollen nullary- ja binääri-produktit
voidaan ajatella rajattujen produktien erikoistapauksena.

Näiden määritelmien myötä voidaan produkteja ajatella tyypillisesti
konstruktorien kautta: ne muodostavat uusia tyyppejä, joissa on vain
yksi konstruktori, mutta voi olla monta argumenttia.
Itselle yleensä selkein tapa ajatella produkteja on
eräänlaisena AND-relaationa ja vastaavasti sum-tyyppejä OR-relaationa.

Tiedostossa [koodit/Product.hs](koodit/Product.hs) on tyypillisiä esimerkkejä
produkteista ja lisäksi lisää yleistä pohdintaa ja huomioita Haskelin
sisäänrakennetuista toteutuksista.

Seuraavaksi [sum-tyypit](04-07-2020-sum-tyypit.md).
