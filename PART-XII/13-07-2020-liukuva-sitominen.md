# Liukuva sitominen

Liukuva tai dynaaminen (fluid or dynamic binding) sidonta esitellään kirjassa ratkaisuna
aiemmin esitellyn dynaamisen tyypityksen esilletuomien ongelmien ratkaisuna.
Tyyppiturvallisuus saadaan liukuvassa sitomisessa säilytettyä pudottamalla
muuttujan käsite ja korvaamalla se liukuvasti sidotuilla [symboleilla](12-07-2020-symbolit.md).

Liukuvassa sitomisessa symboleihin liitetään arvo, joka on siihen tietyssä
annetussa scopessa assosioitua tyyppiä. Aiempiin yksinkertaisempiin symboleihin
verrattuna on nyt siis symboleiden käyttäjän vastuulla myös eksplisiittisesti
antaa scope (joka on tässä tapauksessa vain lauseke), jossa oleva symboli halutaan.
Kun scopesta poistutaan, vaihtuu symbolin sidonta sen ympärillä olevaan kontekstiin.

Määritelmiä katsoessa voidaan huomata, miten symbolien esittelylause 'put'
on lähes identtinen muuttujien 'let' lauseen kanssa. Erona luonnollisesti
on se, että 'let' lauseet käyttävät muuttujia kun taas 'put' lauseet
symboleita, mutta käsitteiden läheinen suhde tulee hyvin ilmi. Erona
on myös se, että nyt symboleille tarjotaan lisäksi 'get' lause, jolla
niitä voi lausekkeista noutaa.

Symboleita ja liukuvaa sitomista tarkastellessa voidaan huomata myös, miten
ne vaikuttavat olevan luonteeltaan läheisempiä usein tyypillisesti ohjelmointikielissä
olevien muuttujien kuin kirjan muuttujan määritelmän kanssa. Esimerkiksi
Pythonin / JavaScriptin muuttuja on ennemminkin viite muistipaikkaan, jota voi
vaihtaa (lähes) miten haluaa, kun taas kirjan määritelmä vastaa lähinnä
matematiikasta tuttua muuttujan määritelmää. Tässä symboleiden määritelmässä
toki koko pointtina on säilyttää tyyppiturvallisuus (minkä vuoksi esitellään kontekstit
ja niissä dynaaminen sidonta), jonka vuoksi ne itse toteutukseltaan selkeästi
eroavat yo. kielistä. Kappaleen lopun 'Notes' osiossa kirjassa esitelläänkin, että
liukuva sidonta tuli esille muuttujien ja symbolien sekaannuksesta Lispin aikaisissa
versioissa.

Seuraavaksi [dynaaminen klassifikaatio](13-07-2020-dynaaminen-klassifikaatio.md).
