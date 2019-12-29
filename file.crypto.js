const fs = require("fs")
const key = {
  private:parseInt(process.argv[3])||27463,
  public:parseInt(process.argv[3])||7,
  modulus:parseInt(process.argv[4])||32399,
};
let file = fs.readFileSync(process.argv[5]);

if(process.argv[2]=="encrypte")
  encrypte();
else if(process.argv[2]=="decrypte")
  decrypte();

function encrypte(){
  const result = new Buffer(file.length*4);

  for(let i=0;i<file.length;i++){
    let Byte = file[i];
    let r = algorithm(Byte, key.public, key.modulus);
    for(let j=0;j<4;j++){
      result[i*4+j] = r%0xff;
      r = ~~(r/0xff);
    }
  }
  fs.writeFileSync(process.argv[6], result);
}
function decrypte(){
  const result = new Buffer(file.length/4);
  for(let i=0;i<result.length;i++){
    let Byte = 0;
    for(let j=3;j>-1;j--){
      Byte*=0xff;
      Byte+=file[i*4+j];
    }
    let r = algorithm(Byte, key.private, key.modulus);
    result[i] = r;
  }
  fs.writeFileSync(process.argv[6], result);
}

function algorithm(c, d, n){
  let Mtmp = 1;
  while(true){
    let m = c, s = 1;
    while(m<n){
      if(s==d)
        return (Mtmp*(m%n)%n);
      m*=c; //mul c
      s+=1; //inc s
    }
    let k = d;
    let a =    k % s;
    let b = ~~(k / s);
    Mtmp = (Mtmp*Math.pow(c, a))%n;
    c = m%n;
    d = b;
  }
}