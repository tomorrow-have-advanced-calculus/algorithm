const fs = require("fs");
const prime = fs.readFileSync("prime.number.list", "utf8").split("\n");

function generate(){
  let P = ~~(Math.random()*prime.length),
      Q = ~~(Math.random()*prime.length),
      E = ~~(Math.random()*(Math.min(P,Q)/2));
  let p = prime[P],
      q = prime[Q],
      n = p*q,
      pn = (p-1)*(q-1),
      e = prime[E],
      d = 2;
  if(p==q||p==e||q==e)
    return generate();
  for(d;(e*d)%pn!=1;d++);
  //console.log(e, d, n);
  return {private:e, public:d, modulus:n};
}

module.exports = generate;