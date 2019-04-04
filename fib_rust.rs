const MAX_NUM: u64 = 90;

fn main() {
    let mut last: u64 = 0;
    let mut curr: u64 = 1;
    let mut output = String::new();
    for _ in 0..MAX_NUM {
        output.push_str(&format!("{:20}\n", last));
        let tmp = last + curr;
        last = curr;
        curr = tmp;
    }
    print!("{}", output);
}

