; SudoKid
            global  _start

            section .text
_start:
            xor         r15, r15            ; mov 90 into the counter register
            xor         r14, r14            ; rax will hold the current number
            xor         rbx, rbx            ; rbx will hold the next number
            inc         rbx                 ; rbx is originally 1
            mov         r8, message         ; rdx hold address message
            add         r8, 21              ; move pointer forward r13

print_number:
            mov         rax, r14
            xor         r9, r9              ; padding counter
            mov         rcx, 10             
            mov         byte [r8], 10       ; write line ending to string
            dec         r8
            inc         r9

number_to_char:
            xor         rdx, rdx
            div         rcx
            add         rdx, 48
            mov         byte [r8], dl       
            dec         r8
            inc         r9
            cmp         rax, 0
            jne         number_to_char

add_padding:
            mov         byte [r8], 32
            dec         r8
            inc         r9
            cmp         r9, 21
            jl          add_padding

fib:
            mov         r10, r14            ; save the current number
            mov         r14, rbx            ; next number is now current
            add         rbx, r10            ; get next number
            inc         r15
            add         r8, 42              ; move pointer forward r13
            cmp         r15, 90 
            jl          print_number

print:
            mov         rax, 1              ; system call for write
            mov         rdi, 1              ; file handle 1 is stdout
            mov         rsi, message        ; address of string to output

            mov         rdx, 1891           ; number of bytes
            syscall                         ; invoke operating system to do the write

exit:
            mov         rax, 60             ; sys call for exit
            xor         rdi, rdi            ; exit code 0
            syscall

            section     .data
padding:    db          20
space:      db          32

            section     .bss
message:    resb        1891               ; reserve 2 words

