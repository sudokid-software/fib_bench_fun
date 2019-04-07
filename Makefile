all: bench

fib.out: fib.asm fib.o
	nasm -felf64 $<
	ld fib.o -o $@

fib_no_buffer.out: fib_no_buffer.asm fib_no_buffer.o
	nasm -felf64 $<
	ld -o $@ fib_no_buffer.o

fib_asm_c.out: fib_asm_c.asm fib_asm_c.o
	nasm -felf64 $<
	gcc -static -o $@ fib_asm_c.o

fib_c.out: fib_c.c
	gcc -std=c89 -pedantic -O4 -flto -s -static -nostdlib -nostdinc -o $@ $<

fib_c_draco.out: fib_c_draco.c
	gcc -O3 -o $@ $<

fib_rust.out: fib_rust.rs
	rustc -O $< -o $@

fib_go.out: fib_go.go
	go build -o $@ fib_go.go

fib_lua.luajit.out: fib_lua.lua
	luajit -b $< $@

fib_lua.luac.out: fib_lua.lua
	luac -s -o $@ $<

bench: fib.out fib_no_buffer.out fib_asm_c.out fib_c.out fib_c_draco.out fib_rust.out fib_go.out fib_lua.luajit.out fib_lua.luac.out
	hyperfine './fib.out' './fib_c.out' './fib_rust.out' 'elixir fib_elixir.exs' 'java -jar fib_clj.jar' 'node fib_javascript.js' './fib_asm_c.out' 'GOGC=off ./fib_go.out' './fib_c_draco.out' 'python3 fib_python3.py' 'luajit fib_lua.luajit.out' 'lua fib_lua.luac.out' './fib_no_buffer.out' 'node fib_staghouse.js' 'ruby fib_ruby.rb'

.PHONY: all bench
