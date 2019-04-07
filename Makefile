all: bench

asm: fib.asm
	nasm -felf64 $<
	ld fib.o -o fib.out

no_buffer_asm: fib_no_buffer.asm
	nasm -felf64 $<
	ld fib_no_buffer.o -o fib_no_buffer.out

asm_with_printf: fib_asm_c.asm
	nasm -felf64 $<
	gcc -static -o fib_asm_c.out fib_asm_c.o

c: fib_c.c
	gcc -std=c89 -pedantic -O4 -flto -s -static -nostdlib -nostdinc -o fib_c.out $<

c_draco: fib_c_draco.c
	gcc -O3 -o fib_c_draco.out $<

rust: fib_rust.rs
	rustc -O $< -o fib_rust.out

go: fib_go.go
	go build -o fib_go.out fib_go.go

lua: fib_lua.lua
	luajit -b $< fib_lua.luajit
	luac -s -o fib_lua.luac $<

bench: asm lua go rust c_draco c asm_with_printf no_buffer_asm
	hyperfine './fib.out' './fib_c.out' './fib_rust.out' 'elixir fib_elixir.exs' 'java -jar fib_clj.jar' 'node fib_javascript.js' './fib_asm_c.out' 'GOGC=off ./fib_go.out' './fib_c_draco.out' 'python3 fib_python3.py' 'luajit fib_luajit.luajit' 'lua fib_lua.lua' './fib_no_buffer.out' 'node fib_staghouse.js' 'ruby fib_ruby.rb'
