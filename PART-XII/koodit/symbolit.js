var assert = require('assert');

/*
 * Symboleilla testailua.
 * Voidaan huomata, että js symbolit eivät aivan vastaa kirjan määritelmää
 * esim. tyypityksen osalta.
 */


// Kaikki symbolit ovat tyyppiä symbol.

const sm  = Symbol('sym');

console.log(typeof(sm)); // -> symbol

// Jokainen symboli on uniikki referenssi.

const smm = Symbol('sym');

console.log(sm === smm); // -> false

/*
 * Lisäksi erona on, että voidaan ajatella, että
 * js symboleissa meillä on myös jonkinlainen rakenne mukana
 * (vaihtoehtoinen merkkijono).
 */

// Molemmat määritelmät ok.

const with_str = Symbol('str');
const no_str   = Symbol();

/*
 * Symboleille ei myöskään ole varsinaista eliminaatioformia,
 * joten voidaan itse asiassa todeta, että js symbolit eroavat
 * selkeästi kirjan määritelmistä.
 *
 * Yleisin käyttötapaus js symboleille on ilmeisestikin
 * tunnisteena käyttö. Siinä etuna on se, että
 * jokainen symboli on uniikki referenssi.
 */

const kv = {};
const one = Symbol('one');

kv[one] = 'one';
assert(kv[one] === 'one'); // -> ok
