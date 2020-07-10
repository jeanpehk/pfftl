# Kontrollikoneet

[Kontrollipinot](10-07-2020-kontrollipinot.md) ja suljetut lausekkeet yhdistämällä
voidaan muodostaa koneita, joilla suorittamista voidaan simuloida.
Koneet sisältävät suoritustilan k |> e, jossa lauseketta e suoritetaan
kontrollipinon k suhteen ja paluutilan k <| e, jossa e on suorituksessa saatu arvo.

Kontrollipinojen ja koneiden avulla voidaan osa lausekkeesta pitää tallessa pinossa erillistä
osaa suoritettaessa. Tämä voidaan nähdä konkreettisesti esimerkiksi kirjassa
esitellyn PCF-kielen luonnollisten lukujen suorituksen esimerkissä:
k |> s(e) -> k;s(-) |> e, jossa seuraaja s lisätään pinoon ja lauseke e suoritukseen.
Vastaavasti kun e on suoritettu, voidaan ne yhdistää ja palauttaa pinoon säännöllä:
k;s(-) <| e -> k <| s(e). Tästä voidaan huomata miten esimerkki kuvaa aika
suoraviivaisesti yksinkertaista tapaa suorittaa syntaksiohjattua evaluointia konkreettisessa
toteutuksessa.

On huomattavaa, että tähän mennessä ei kontrollikoneiden käsitettä oltu tarvittu ollenkaan.
Suorituksessa ei siis ollut vielä tarvetta "pysähtyä" kesken suorituksen siten, että ohjelman
suorituksen paikka säilytetään. Tämä havainnollistaa esitettyjen käsitteiden ja esitystavan
matemaattista luonnetta, jolloin "välivaiheet" eivät välttämättä ole niin olennaisia vaan
itse siirtymien alku- ja lopputilat. Tämä muistuttaa myös funktionaalisen ohjelmoinnin
tapaa käsitellä siirtymiä. Nyt seuraavissa kappaleissa käsiteltävien poikkeuksien ja jatkuvuuksien
takia kuitenkin kontrollikoneista tulee tarpeellisia. Lisäksi olettaisin, että ainakin tilaa käsittelevä
kappale voisi käsitteen vaatia.

Seuraavaksi [virheet](10-07-2020-virheet.md).
