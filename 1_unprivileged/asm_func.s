.syntax unified

.global	read_sp
read_sp:
    MOV r0 , SP
    bx lr

.global	read_msp
read_msp:
    MRS r0 , MSP
    bx lr

.global	read_psp
read_psp:
    MRS r0 , PSP
    bx lr
	
.global	read_ctrl
read_ctrl:
    MRS r0 , CONTROL
    bx lr
.global	start_user
start_user:
    MOV lr ,r0
    MSR PSP,r1
    MOV r0 ,#3
    MSR CONTROL,r0
    ISB
    bx lr

.global	sw_priv
sw_priv:
    MOV r0 ,#0
    MSR CONTROL,r0
    ISB
    bx lr
