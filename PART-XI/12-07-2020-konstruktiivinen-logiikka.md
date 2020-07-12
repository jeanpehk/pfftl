# Konstruktiivinen logiikka

Konstuktiivisen logiikan taustana esitellään matematiittiset
todistukset sosiaalisena konstruktina, jossa ihmisten kesken määritellään
mitkä ovat riittävät säännöt valideille argumenteille. Tässä ei vielä ole
mitään erikoista (eikä varmaan ole tarkoituskaan), sillä matematiikka selkeästi
pohjautuu ihmisten määrittelemille aksioomille. Lisäksi tuodaan
esille se, että matematiikassa tulee aina olemaan ratkaisemattomia väitteitä,
joten emme voi odottaa väitteen aina olevan joko tosi tai epätösi. Tästä
päästään konstruktiivisen logiikan totuuden määritelmään, joka eroaa klassisen
logiikan vastaavasta.

Konstruktiivisessa logiikassa väitteen V totuus vaatii todistuksen V:stä.
Tästä seuraa, että emme voi yleisesti sanoa väitteen olevan tosi tai epätosi.
Tämä voidaan huomata kirjan esimerkin mukaisesti ajattelemalla sitä, mitä tarkoittaa
se, että meillä on epätosi väite. Jotta väite T olisi epätosi, tulee meillä olla *todistus*
siitä, että oletuksesta T on tosi seuraa ristiriita jonkin todeksi tiedetyn kanssa.
Ts. kutakuinkin T -> False. Tästä seuraa mielenkiintoisia eroavaisuuksia esim. klassisessa
logiikassa olennaiseen law of excluded middleen (A \\/ not A) ja tuplanegaation eliminoimiseen
(not (not A) | A), joita ei konstruktiivisessa logiikassa voida käyttää.
Vasta yliopiston Logiikka-kurssin käyneenä ja todistuksissa usein edellä olevia
käsitteitä käyttäneenä, tässä vaiheessa herääkin muutamia kysymyksiä. Esimerkiksi
miten ekspressiivinen on konstruktiivinen logiikka? Vaikuttaisi, että todistusten johtaminen
on selkeästi hankalampaa. Toisaalta todistukset, jotka pystytään johtamaan ovat arvokkaampiaa,
koska ne johdetaan tarkemmista periaatteista. Lisäksi, koska käsitykseni mukaan useilla teoreema
todistajilla (theorem prover) kuitenkin pystytään hyvinkin vaikeisiin todistuksiin,
ei näiden yo. todistusten puuttuminen välttämättä voi olla erityisen haitallista.

Konstruktiivisen logiikan sääntöihin nojautumalla kirjassa päästään mielenkiintoiseen
lopputulokseen: todistukset vastaavat niihin assosioidun tyyppistä ohjelmaa ja
ohjelmat vastaavat todistuksia niihin assosioidun tyyppisistä propositioista.
Tätä yhtenäistämistä kutsutaan propositiot tyyppeinä (propositions as types) prinsiipiksi
ja se on keskeinen tekijä ohjelmointikielten teoriassa.

Kirjassa mainitaan vain kappaleen lopussa lyhyesti, että tätä ohjelmien ja todistusten
yhteyttä usein kutsutaan myös [Curry-Howard korrespondenssiksi](https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence).
Tätä puuttumista ehdinkin jo hieman ihmettelemään ja perusteluna sen poisjättämiselle
Harper kertoo mm. sen, että kyseinen termi jättää huomioimatta muiden olennaiset
kontribuutiot.

Kappale täydentää mukavasti omaa tietämystä, sillä olen usein kuullut siinä
käytetyistä termeistä, mutta itse niiden sisältöä en ollut vielä juurikaan
käsitellyt. Samalla selkenee huomattavasti esim. Coqin ja vastaavien
teoreema todistajien taustalla oleva toimintalogiikka.

Seuraavaksi [klassinen logiikka](12-07-2020-klassinen-logiikka.md).
