This was used for learning x64 ASM. 

I personally did the `fib.asm` and all other code was provided by the community.

Please note that the benchmarks change pending on what you computer is doing. Take all this with a grain of salt as they are meaningless benchmarks!

Last benchmark results:
Summary
'./fib.out' ran
1.74 ± 4.57 times faster than './fib_no_buffer.out'
3.61 ± 7.66 times faster than './fib_c.out'
4.33 ± 9.24 times faster than './fib_asm_c.out'
5.63 ± 11.86 times faster than './fib_c_draco.out'
9.19 ± 18.68 times faster than './fib_rust.out'
10.04 ± 20.34 times faster than 'luajit fib_luajit.luajit'
14.63 ± 29.44 times faster than 'lua fib_lua.lua'
23.67 ± 49.22 times faster than 'GOGC=off ./fib_go.out'
320.56 ± 636.77 times faster than 'python3 fib_python3.py'
829.87 ± 1648.09 times faster than 'node fib_staghouse.js'
857.30 ± 1702.79 times faster than 'node fib_javascript.js'
913.29 ± 1813.77 times faster than 'ruby fib_ruby.rb'
8587.39 ± 17053.24 times faster than 'elixir fib_elixir.exs'
11890.59 ± 23617.70 times faster than 'java -jar fib_clj.jar'
