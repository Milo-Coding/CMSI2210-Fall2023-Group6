; ----------------------------------------------------------------------------
; gcdFinder.nasm
;
; Win32 function to find the GCD when called by gcdFinder.c
; ----------------------------------------------------------------------------

         global      _gcdFinder

         section     .text

_gcdFinder:
filetop:
         push        ebp               ;
         mov         ebp,  esp         ;

getnums:
         mov         eax,  [ebp+8]     ; get first number (locations taken from example)
         mov         ecx,  edx         ; get second number

calc:
         cmp         eax,  ecx         ;
         je          end               ;
         jb          swap              ; 
         jmp         top               ;
swap:
         xchg        eax,  ecx         ;
top:
         xor         edx,  edx         ; 
         idiv        ecx               ;
         test        edx,  edx         ;
         je          end
         mov         eax,  ecx         ;
         mov         ecx,  edx         ;
         jmp         top               ; 

end:
         mov         eax,  ecx         ;
         mov         esp,  ebp         ;
         pop         ebp               ;
         ret
