.global start

.text

message:
    .ascii "Hello, World!\n"

start:
    # print the message
    mov $1, %rax        # syscall 1 is write
    mov $1, %rdi        # file descriptor 1 is stdout
    mov $message, %rsi  # pass address of messsage
    mov $13, %rdx       # pass length of message
    syscall             # perform write system call

    # exit
    mov $60, %rax       # syscall 60 is exit
    mov $0, %rdi        # pass exit status of 0
    syscall             # perform exit system call
