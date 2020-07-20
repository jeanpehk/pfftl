# Primitiivinen rekursio

Mielenkiintoisin ja tuntemattomin lisäys [Gödelin T:ssä](03-07-2020-godelin-T.md)
itselleni on primitiivisen rekursion käsite.
Määritelmiä tutkimalla voidaan todeta, että primitiivinen
rekursio kattaa seuraavat osat:
- lausekkeen, josta suoritus aloitetaan (e0).
- rakenteen, jossa rekursiota suoritetaan (e).
- kaksi sidottua muuttujaa y ja x, joista x vastaa rakenteen edeltäjää ja
y x:nnen iteraation tulosta.

Kirjan mukaisesti tämä vastaa e-fold iteraatiota transformaatiossa x.y.e1, joka alkaa e0:sta.
Koitetaan selventää tätä laskemalla yksinkertainen rekursio:
Olkoon e = s(s(z)), e0 = \x. \y. y ja e1 = \x. \y. y x. Tällöin saadaan esitettyjen (laiskan) dynamiikan
sääntöjen mukaisesti:

rec(s(s(z)); e0; x.y.e1)

=> [s(z), rec(s(z); e0; x.y.e1)/x,y]e1 (9.3g)

=  (rec(s(z); e0; x.y.e1)) s(z) (muuttujanvaihto)

=> ([z, rec(z; e0; x.y.e1)/x,y]e1) s(z) (9.3g)

=  ((rec(z; e0; x.y.e1)/x,y]e1) z) s(z) (muuttujanvaihto)

=> (e0 z) s(z) (9.3f)

=  ((\x. \y. x) z) s(z) (määritelmä)

=> z.

Tästä voidaan huomata, että rec-operaattori on hyvin lähellä Haskelin foldr:n määritelmää.
Otamme aina nat-rakenteesta yhden alkion ulos ja käytämme sitä argumenttina seuraavan
"kierroksen" tulokselle. Lopulta rakenteen läpikäynnin seurauksena pääsemme alkutilaan e0,
joka käynnistää suorituksen purkamisen saatujen tulosten avulla.

Seuraavaksi PART-IV ja [product-tyypit](../PART-IV/04-07-2020-product-tyypit.md)
