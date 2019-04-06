asm:
	nasm -felf64 fib.asm && ld fib.o -o fib.out && ./fib.out

no_buffer_asm:
	nasm -felf64 fib_no_buffer.asm && ld fib_no_buffer.o -o fib_no_buffer.out

asm_with_printf:
	nasm -felf64 fib_asm_c.asm && gcc-4.9 fib_asm_c.o -o fib_asm_c.out

c:
	gcc -O3 fib_c.c -o fib_c.out

c_draco:
	gcc -O3 fib_c_draco.c -o fib_c_draco.out

rust:
	rustc -O fib_rust.rs -o fib_rust.out

go:
	go build -o fib_go.out fib_go.go

luajit:
	luajit -b fib_luajit.lua fib_luajit.luajit

bench:
	hyperfine './fib.out' './fib_c.out' './fib_rust.out' 'elixir fib_elixir.exs' 'java -jar fib_clj.jar' 'node fib_javascript.js' './fib_asm_c.out' 'GOGC=off ./fib_go.out' './fib_c_draco.out' 'python3 fib_python3.py' 'luajit fib_luajit.luajit' 'lua fib_lua.lua' './fib_no_buffer.out' 'node fib_staghouse.js' 'ruby fib_ruby.rb'

