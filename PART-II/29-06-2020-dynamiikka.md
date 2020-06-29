# Dynamiikka

Ohjelmointikielen dynamiikka määrittelee miten hyvin muodostettu
ohjelma tulisi suorittaa.

Dynamiikan (dynamics) määrittelyyn käytetään kirjan mukaan yleensä
rakenteellista dynamiikkaa (structural dynamics), lisäksi esitellään
kontekstuaalinen dynamiikka (contextual dynamics), joka on vaihtoehtoinen
tapa dynamiikan määrittelyyn. Käsitellään tässä yleisempää rakenteellista
dynamiikkaa, koska mielestäni oleellisempaa on ajatusten ymmärtäminen eikä
useiden merkintätapojen.

Rakenteellisen dynamiikan säännöillä voidaan määrittää jokaiselle
tilalle tapa edetä seuraavaan tilaan. Sääntöjä määritellessä
tulee olla tarkkana deterministisyyden kanssa. Nimittäin jos yhdestä
tilasta voi edetä enemmän kuin yhteen tilaan, on kieli epädeterministinen.

Tehdään esimerkin vuoksi yksinkertainen derivaatio kirjassa määritellyn
kielen sääntöjen (5.4) mukaan [abstraktille sidontapuulle](../PART-I/21-06-2020-abt.md)
let(str[b];x.cat(str[a];x)):

  -> cat(str[a];str[b]) (5.4h)
  
  -> str[ab] \(5.4d)
