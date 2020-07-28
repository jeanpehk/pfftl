# Kontrollipinot

Kontrollipinoilla voidaan eksplisiittisesti kuvata paikka, jossa
lausekkeessa olemme sitä askeleittain suorittaessa. Kontrollipinot esitellään,
koska aiemmin kielten [dynamiikkojen](../PART-II/29-06-2020-dynamiikka.md)
vaiheiden kuvauksessa käytetty rakenteellinen dynamiikka ei ole riittävä
suoraan implementaatiossa käytettäväksi. Tämä johtuu siitä, että etsintälausekkeiden
(ks. edellinen linkki dynamiikkaan) kohdalla joudutaan
muodostamaan lauseke aina kokonaan uudelleen yhden askeleen suoritusvaiheessa.

Kontrollipinoja käytettäessä saadaan lausekkeen konteksti aina eksplisiittiseksi,
jolloin lauseketta ei tarvitse rekonstruoida tai "kulkea" toteutusta varten.

Jatketaan [kontrollikoneilla](10-07-2020-kontrollikoneet.md).
