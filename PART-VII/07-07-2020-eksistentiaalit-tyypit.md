# Eksistentiaalit tyypit

Eksistentiaalit tyypit mahdollistavat datan piilottamisen.
Niitä voidaan käyttää rajapintoina toteutuksen ja sen käyttäjän välillä.
Tyyppinä eksistentiaali tyyppi sisältää vapaan tyyppimuuttujan, joka sidotaan
toteutuksen yhteydessä johonkin lausekkeeseen.

Puhtaasti määritelmien merkintöjä katsomalla voidaan huomata selkeä yhteys
logiikkaan ja parametriseen polymorfismiin. Parametrisessä polymorfismissa
pystyttiin esim. funktiot määrittelemään siten, että se toimii samoin kaikilla
muuttujilla (määritelmissä käytettiin kvanttoria forall). Tässä taas luodaan
eräänlaisia instansseja (määritelmissä käytetään kvanttoria exists) tyypeistä, jotka
määritellään vapaan tyyppimuuttujan avulla.

Eksistentiaalisten tyyppien esittelyn jälkeen ensimmäisenä mieleen tulee
millaisia olisivat vastaavat toteutukset esim. Haskelissa. Tyyppiluokat
kuulostavat lähinnä vastaavilta, koska ne tietyllä tapaa mahdollistavat
toteutuksen piilotuksen käyttäjältä. Kuitenkin tyyppiluokat säilyttävät
myös itse tyyppi-informaation eivätkä piilota
osaa siitä, kuten eksistentiaalit tyypit. Pienellä etsinnällä
voidaan löytää Haskelin kielilaajennos "ExistentialQuantification", joka
mahdollistaa eksistentiaalisten tyyppien käytön. Pienen kokeilun
perusteella voidaan huomata, miten eksistentiaalisten tyyppien
käyttö yhdistettynä tyyppiluokkiin muistuttaa hyvin paljon olio-ohjelmointia.

Eksistentiaalisten tyyppien käyttö, varsinkin tyyppiluokkien kanssa,
onkin osan mielestä jokseenkin kyseenalainen tapa funktionaalisessa ohjelmoinnissa
(ks. esim [stackexchange](https://softwareengineering.stackexchange.com/questions/184958/why-or-why-not-are-existential-types-considered-bad-practice-in-functional-pro)
ja [Luke Palmer](https://lukepalmer.wordpress.com/2010/01/24/haskell-antipattern-existential-typeclass/)).

Tiedostossa [koodit/Exist.hs](koodit/Exist.hs) on lisää pohdintaa
ja esimerkkejä eksistentiaalisten tyyppien käytöstä.
