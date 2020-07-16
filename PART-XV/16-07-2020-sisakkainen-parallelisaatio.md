# Sisäkkäinen parallelisaatio

Parallelisaatiolla tarkoitetaan laskentojen samanaikaista suorittamista,
tarkoituksenaan vähentää laskentaan kuluvaa aikaa.
Kirjan määritelmien mukaisesti parallelisaatiota ei tule
sekoittaa samanaikaisuuden (concurrency) kanssa. Tämä johtuu siitä, että
parallellisaatiossa ohjelman merkitys ei saa riippua siitä, toteutetaanko
se rinnakkaisesti vai ei. Samanaikainen suorittaminen luonteensa vuoksi
johdattaa suosimaan funktionaalisen ohjelmoinnin mallia. Tämä johtuu siitä, että
parallelisaatiossa ei tulisi olla suoritettavien laskentojen välillä riippuvuuksia.
Esimerkiksi imperatiivisissa kielissä yleiset asennettavat (imperatiiviset muuttujat)
voivat vaikuttaa toiseen samanaikaisesti suoritettavaan laskentaan, jolloin toisen
laskennan tulos onkin riippuvainen siitä.

Sisäkkäisessä parallelisaatiossa parallelisoituja
laskentoja voidaan asettaa sisäkkäin hierarkkisella tavalla, mikä mahdollistaa
parallelisaation toteuttamisen jo valmiiksi parallelisoidussa laskennassa.

Merkinnöistä voidaan huomata, että niissä jätetään huomiotta varsinaisen
toteutuksen kannalta olennaisia tekijöitä. Esimerkiksi laskentojen
määrää ei erikseen rajoiteta käytössä olevilla prosessoreilla. Tässä keskitytäänkin
siis parallelisaation toteuttamisen malleihin kielten tasolla sekä laskentaan
kuluvan ajan arviointia teoreettisesta näkökulmasta.

Seuraavaksi [futuurit](16-07-2020-futuurit.md).
