;CARLOS CHEW 
;CARNET 17507
;ASSEMBLER 
;#INCISO 3


.LC0:
  .ascii "MALA NOTA;\000"
.LC1:
  .ascii "REGULAR NOTA;\000"
.LC2:
  .ascii "BUENA NOTA;\000"
main:
  @ args = 0, pretend = 0, frame = 8
  @ frame_needed = 1, uses_anonymous_args = 0
  stmfd sp!, {fp, lr}
  add fp, sp, #4
  sub sp, sp, #8
  mov r3, #99
  str r3, [fp, #-8]
  ldr r3, [fp, #-8]
  cmp r3, #0
  blt .L2
  ldr r3, [fp, #-8]
  cmp r3, #61
  bgt .L2
  ldr r0, .L5
  ldr r1, .L5+4
  bl std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov r3, r0
  mov r0, r3
  ldr r1, .L5+8
  bl std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L2:
  ldr r3, [fp, #-8]
  cmp r3, #61
  ble .L3
  ldr r3, [fp, #-8]
  cmp r3, #85
  bgt .L3
  ldr r0, .L5
  ldr r1, .L5+12
  bl std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov r3, r0
  mov r0, r3
  ldr r1, .L5+8
  bl std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L3:
  ldr r3, [fp, #-8]
  cmp r3, #85
  ble .L4
  ldr r3, [fp, #-8]
  cmp r3, #100
  bgt .L4
  ldr r0, .L5
  ldr r1, .L5+16
  bl std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
  mov r3, r0
  mov r0, r3
  ldr r1, .L5+8
  bl std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
.L4:
  mov r3, #0
  mov r0, r3
  sub sp, fp, #4
  ldmfd sp!, {fp, pc}
.L5:
  .word std::cout
  .word .LC0
  .word std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
  .word .LC1
  .word .LC2
__static_initialization_and_destruction_0(int, int):
  @ args = 0, pretend = 0, frame = 8
  @ frame_needed = 1, uses_anonymous_args = 0
  stmfd sp!, {fp, lr}
  add fp, sp, #4
  sub sp, sp, #8
  str r0, [fp, #-8]
  str r1, [fp, #-12]
  ldr r3, [fp, #-8]
  cmp r3, #1
  bne .L7
  ldr r2, [fp, #-12]
  ldr r3, .L9
  cmp r2, r3
  bne .L7
  ldr r0, .L9+4
  bl std::ios_base::Init::Init()
  ldr r3, .L9+8
  ldr r0, .L9+4
  mov r1, r3
  ldr r2, .L9+12
  bl __aeabi_atexit
.L7:
  sub sp, fp, #4
  ldmfd sp!, {fp, pc}
.L9:
  .word 65535
  .word std::__ioinit
  .word std::ios_base::Init::~Init()
  .word __dso_handle
global constructors keyed to main:
  @ args = 0, pretend = 0, frame = 0
  @ frame_needed = 1, uses_anonymous_args = 0
  stmfd sp!, {fp, lr}
  add fp, sp, #4
  mov r0, #1
  ldr r1, .L12
  bl __static_initialization_and_destruction_0(int, int)
  ldmfd sp!, {fp, pc}
.L12:
  .word 65535