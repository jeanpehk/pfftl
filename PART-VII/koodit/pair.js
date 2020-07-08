// JavaScriptissä on myös anonyymit korkeamman asteen funktiot,
// joten tehdään vastaavat toteutukset myös sillä.

const tr = (t, f) => t;
const fl = (t, f) => f;

const pair = (x, y) => {
  return (p => p(x,y));
}

const fst = (p) => {
  return p((x,y) => x);
}

const snd = (p) => {
  return p((x,y) => y);
}

console.log(fst(pair(1,2))); // -> 1
console.log(snd(pair(1,2))); // -> 2
