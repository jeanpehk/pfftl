# Yhtälöllinen perustelu

Viimeisessä, yhtälöllistä perustelua käsittelevässä, kappaleessa
annetaan perustelut sekä merkitykset sille, mitä ekvivalenssi
tarkoittaa kirjan kehyksessä ja mitä eri muotoja sillä on.

Pohditaan ensin kuitenkin hieman sitä, miksi tarvitsemme
erikseen ekvivalenssin eri muotoja ja ekvivalenssin käsitettä
ylipäänsä. Eikö jo kirjan esittämät dynamiikat ohjelmien oikeellisuuden
määrittelyyn riitä?

Toki ohjelmien oikeellisuuden määrittäminen on olennainen
perusta, jolle koko kielen ja sen järjellisyyden rakennamme.
Kuitenkin ekvivalenssin käsitteen puute riistää tärkeän näkökulman:
eri ohjelmien keskinäisen vertailun (tai konstruktiivisen logiikan mukaisesti:
kahden todistuksen vertailun). Vaikka esitellyt dynamiikat ja
niiden tyyppisäännöt auttavatkin luomaan oikeellisia ohjelmia,
eivät ne ole kaiken kattavia. Ekvivalenssin käsite tuo lisänäkökulman,
jonka avulla voidaan alkaa osoittamaan myös ohjelmien ominaisuuksia.
Ohjelmointikielten tasolla toteutettuna tämän voi ajatella olevan
esimerkiksi "perinteisten" funktionaalisten kielten, kuten
Haskelin, ja teoreema todistajien välinen rajoitus. Lisänä tähän tuovat
ekvivalenssin eri muodot meille mahdollisuuden määritellä sen,
mitä ylipäänsä pystymme todistamaan. Eri muotojen todistukset ovat
merkitykseltään erilaisia ja osoittavat erilaisia ominaisuuksia.

Esitellään kirjan mukaisesti aiemmin hieman käsitellyn
määrityksellisen ekvivalenssin (definitional equivalence)
puutteita. Määrityksellinen ekvivalenssi seuraa suoraan annettuja
määritelmiä ja niiden eliminointimuotoja seuraamalla, ts. ne täytyy
osoittaa ekvivalenteiksi symbolisella suorittamisella. Jos nyt esitämme
esimerkiksi [gödelin T:n](../PART-III/03-07-2020-godelin-T.md) mukaiset lausekkeet
lam: (x:nat) lam (y:nat) plus (x) (y) ja lam: (x:nat) lam (y:nat) plus (y) (x)
eivät ne ole määrityksellisesti ekvivalentteja, koska ne kuvaavat eri algoritmeja.

Yleisempiä havaintoja ekvivalenssin suhteen tehdäksemme tarvitaan siis
vahvempia keinoja. Jatketaan näistä ekvivalenssin perinteistä matematiikasta
tuttua merkitystä paremmin vastaavalla
[havainnollisella ekvivalenssilla](19-07-2020-havainnollinen-ekvivalenssi.md).
