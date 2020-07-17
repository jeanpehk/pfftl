# Synkroniset prosessit

Synkronisen kommunikaatioon avulla voidaan prosessien kommunikaatiota
laajentaa siten, että niiden välillä voidaan kommunikoida enemmän
kuin yksi instanssi dataa. Tämä mahdollistetaan siten, että molemmat
prosessit ovat valmiita sekä lähettämään että tiedustelemaan dataa
saman kanavan kautta. Prosessit voidaan ajatella jaoteltuina lähettäjään
ja vastaanottajaan. Synkronisessa kommunikaatiossa on viestin lähettämisen
jälkeen molemmat prosessit "blokattuina" kunnes vuorovaikutus on valmis.
Tämä tarkoittaa sitä, että viestin lähetyksen jälkeen tulee vastaanottajan
pyrkiä vastaanottamaan viesti sekä lähettää kuittaus lähettäjälle. Lähettäjän taas
tulee vastaanottaa kuittaus ennen kuin se voi jatkaa toimintaansa.

Voidaan huomata, että synkroninen kommunikaatio vastaa tapaa, jolla esimerkiksi
suuri osa www-protokollista on toteutettu. Etuna siinä on kommunikaation
luotettavuus: viestien vastaanottaminen tulee varmistaa eikä siten
esimerkiksi huonosta yhteydestä riippuvat ongelmat aiheuta niin paljoa ongelmia.

Synkronista kommunikaatiota voidaan myös helposti laajentaa asynkroniseksi
kommunikaatioksi. Siinä ei kommunikaatio ole blokkaavaa, vaan esimerkiksi
viestin lähettäjän ei tarvitse jäädä odottamaan varmistusta siitä että
viesti on vastaanotettu.

Seuraavaksi []().
