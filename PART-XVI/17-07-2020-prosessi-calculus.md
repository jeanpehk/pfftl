# Prosessi calculus

Prosessi calculukset ovat joukko formaaleja määritelmiä, joiden
avulla voidaan kuvata itsenäisten agenttien välistä vuorovaikutusta.
Siten sen avulla voidaan rueta määrittelemään konsepteja, joita
ei vielä kirjassa ole esitelty, kuten sisään- ja ulostuloa.
Prosessi calculus koostuu kahdesta syntaktisesta kategoriasta:
prosesseista ja tapahtumista. Prosessien voitaisiin tässä yhteydesssä
ajatella olevan näitä mainittuja vuorovaikutuksessa olevia agentteja
ja tapahtumien prosessien toiminnasta riippuvia laskentoja.
Tarkemmin määriteltynä tapahtumissa prosessi tiedustelee tiettyä
kanavaa, johon toinen prosessi voi lähettää signaalin. Kun kanavaa
tiedustelee prosessi ja se vastaanottaa toisen kanavan lähettämän
signaalin, sanotaan prosessien synkronisoivan.

Yksinkertainen määritelmä prossessi calculuksista on peräkkäiset prosessit,
joissa prosessi vain odottaa tapahtuman suoritusta. 
Näitä peräkkäisiä prosesseja voidaan laajentaa käsittämään konkurrentit
kompositiot, jolloin prosessit voivat tehdä yhteistyötä saavuttaakseen
tietyn tavoitteen. Prosessit siis pystyvät muodostamaan pidempiä
"ketjuja" kommunikaatiossaan, eikä ne kata vain yhtä tiettyä tapahtumaa
kuten aiemmin.

Jatketaan seuraavaksi edelleen prosessien toimintojen laajentamista
[synkronisilla prosesseilla](17-07-2020-synkroniset-prosessit.md).
