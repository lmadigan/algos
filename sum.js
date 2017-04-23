function sum(i) {
  return function littleSum(i1){
    let r = (i + i1);
    return function littlerSum(i2){
      let result = (r + i2);
      return result;
    };
  };
}


console.log(sum(3)(4)(5));
