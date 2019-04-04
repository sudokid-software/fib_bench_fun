let prev = 0;
let curr = 1;
for (let i = 0; i < 90; i++) {
	console.log(prev.toString().padStart(20, ' '));
	const tmp = prev + curr;
	prev = curr;
	curr = tmp;
}
