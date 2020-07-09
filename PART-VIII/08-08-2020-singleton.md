# Singleton

Singletonit liittyvät vahvasti aiemmin käsiteltyihin
[konstruktoreihin ja kindeihin](../PART-VII/07-07-2020-konstruktorit-kindit.md).
Singletoneissa jokaisella kindin k tyyppikonstruktorilla c, on myös kind S(c)
(tässä S(c) vastaa singletonia). Singletonien voidaan ajatella luokittelevan
konstruktorit, jotka vastaavat kindia c. Lisäksi kirjan mukaan singleton kindit
mahdollistavat tyyppimuuttujien rajoitetun määrittelyn ilman ad hoc mekanismeja
(olettaisin, että tässä viitataan tyyppiluokkien kaltaisiin ratkaisuihin).

Lisäksi singletonien parempaa määrittelyä varten kirjassa lisätään riippuvien kindien
käsite. Ne mahdollistavat sen, että kindit voivat riippuvat toisista tyyppi konstruktoreista.

Singletonit on itselleni uusi käsite ja konseptin hahmottaminen pelkkien matemaattisten
määritelmien kautta koen aika hankalaksi, joten koitetaan taas selventää ajatuksia
koodiesimerkkien kautta: [koodit/Sing.hs](koodit/Sing.hs).

Seuraavaksi PART-IX ja [dynaaminen lähetys](../PART-IX/09-07-2020-dynaaminen-lahetys.md).
