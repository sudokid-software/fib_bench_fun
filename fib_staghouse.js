// Props to ABuffSeagull for the padding rules I didn't know about
console.log(
  new Array(88)
    .fill(null)
    .reduce((acc, cur, idx) => acc = [ ...acc, ( acc[idx] + acc[idx+1] )], [0 , 1])
    .map(num => num.toString().padStart(20, ' ')).join('\n')
);
