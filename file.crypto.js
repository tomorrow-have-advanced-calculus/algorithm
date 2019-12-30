const fs = require("fs");
const key = parseInt(process.argv[3]), 
      modulus = parseInt(process.argv[4]);
const file = fs.readFileSync(process.argv[5]);
const storage = process.argv[6];
if(process.argv[2]=="encrypte"){
  encrypte(file, key, modulus, storage);
}else if(process.argv[2]=="decrypte"){
  decrypte(file, key, modulus, storage);
}

function encrypte(file, e, n, storage){
  const result = new Buffer(file.length*4);
  for(let i=0;i<file.length;i++){
    let buf = file[i];
    buf = algorithm(buf, e, n);
    for(let j=0;j<4;j++){
      process.stdout.write((buf&0xff)+" ");
      result[i*4+j] = (buf&0xff)
      buf>>=8;
    }
    console.log("");
  }
  fs.writeFileSync(storage, result);
}

function decrypte(file, d, n, storage){
  const result = new Buffer(file.length/4);
  for(let i=0;i<result.length;i++){
    let buf = 0;
    for(let j=3;j>-1;j--){
      buf<<=8;
      buf+=file[i*4+j];
      
    }
    buf = algorithm(buf, d, n);
    result[i] = buf;
  }
  fs.writeFileSync(storage, result);
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