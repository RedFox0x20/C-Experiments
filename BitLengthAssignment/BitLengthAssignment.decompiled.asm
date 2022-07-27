/*
 **************************************************************
 *                          FUNCTION                          *
 **************************************************************
 */
/*
   META DATA
   ----------------------------------
   uchar __stdcall main(int argc, char * * args)
   uchar             AL:1           <RETURN>
   int               EDI:4          argc
   char * *          RSI:8          args
   undefined8        FS_OFFSET:8    GCC_STACK_SAFETY_in_FS_OFFSET
   undefined8        Stack[-0x10]:8 GCC_STACK_SAFETY                        XREF[2]:     00101171(W), 
   00101419(R)  
   undefined8        Stack[-0x18]:8 MultiBool_PTR                           XREF[2]:     001011a4(W), 
   001013f8(R)  
   MultiBool_t       Stack[-0x19]:1 MultiBool4                              XREF[1]:     0010119c(W)  
   MultiBool_t       Stack[-0x1a]:1 MultiBool3                              XREF[1]:     00101198(W)  
   MultiBool_t       Stack[-0x1b]:1 MultiBool2                              XREF[1]:     00101194(W)  
   MultiBool_t       Stack[-0x1c]:1 MultiBool1                              XREF[44]:    00101190(W), 
   001011a0(*), 
   001011a8(*), 
   001011c5(R), 
   001011d2(R), 
   001011e0(R), 
   001011ef(R), 
   001011ff(R), 
   0010120f(R), 
   0010121e(R), 
   0010122d(R), 
   0010125c(R), 
   00101263(W), 
   00101266(R), 
   0010126d(W), 
   00101270(R), 
   00101277(W), 
   0010127a(R), 
   00101281(W), 
   00101284(R)  
   undefined4        Stack[-0x2c]:4 local_2c                                XREF[1]:     00101161(W)  
   undefined8        Stack[-0x38]:8 local_38                                XREF[1]:     00101164(W)  
   main                                            XREF[4]:     Entry Point(*),
 */
_start:00101078(*), 00102130, 
	00102198(*)  
	00101159 55              PUSH       RBP
	0010115a 48 89 e5        MOV        RBP,RSP
	0010115d 48 83 ec 30     SUB        RSP,0x30
	00101161 89 7d dc        MOV        dword ptr [RBP + local_2c],argc
	00101164 48 89 75 d0     MOV        qword ptr [RBP + local_38],args
	00101168 64 48 8b        MOV        RAX,qword ptr FS:[0x28]
	04 25 28 
	00 00 00
	00101171 48 89 45 f8     MOV        qword ptr [RBP + GCC_STACK_SAFETY],RAX
	00101175 31 c0           XOR        EAX,EAX
	00101177 be 01 00        MOV        args,0x1
	00 00
	0010117c 48 8d 05        LEA        RAX,[s_Structure_size_=_%i_00102008]             = "Structure size = %i\n"
	85 0e 00 00
	00101183 48 89 c7        MOV        argc=>s_Structure_size_=_%i_00102008,RAX         = "Structure size = %i\n"
	00101186 b8 00 00        MOV        EAX,0x0
	00 00
0010118b e8 c0 fe        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	00101190 c6 45 ec aa     MOV        byte ptr [RBP + MultiBool1],0xaa
	00101194 c6 45 ed bb     MOV        byte ptr [RBP + MultiBool2],0xbb
	00101198 c6 45 ee cc     MOV        byte ptr [RBP + MultiBool3],0xcc
	0010119c c6 45 ef dd     MOV        byte ptr [RBP + MultiBool4],0xdd
	001011a0 48 8d 45 ec     LEA        RAX=>MultiBool1,[RBP + -0x14]
	001011a4 48 89 45 f0     MOV        qword ptr [RBP + MultiBool_PTR],RAX
	001011a8 0f b6 45 ec     MOVZX      EAX=>MultiBool1,byte ptr [RBP + -0x14]
	001011ac 0f b6 c0        MOVZX      EAX,AL
	001011af 89 c6           MOV        args,EAX
	001011b1 48 8d 05        LEA        RAX,[s_Value_hex_=_0x%01x_0010201d]              = "Value hex = 0x%01x\n"
	65 0e 00 00
	001011b8 48 89 c7        MOV        argc=>s_Value_hex_=_0x%01x_0010201d,RAX          = "Value hex = 0x%01x\n"
	001011bb b8 00 00        MOV        EAX,0x0
	00 00
001011c0 e8 8b fe        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	001011c5 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001011c9 0f b6 c0        MOVZX      EAX,AL
	001011cc 83 e0 01        AND        EAX,0x1
	001011cf 41 89 c0        MOV        R8D,EAX
	001011d2 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001011d6 0f b6 c0        MOVZX      EAX,AL
	001011d9 d1 f8           SAR        EAX,0x1
	001011db 83 e0 01        AND        EAX,0x1
	001011de 89 c7           MOV        argc,EAX
	001011e0 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001011e4 0f b6 c0        MOVZX      EAX,AL
	001011e7 c1 f8 02        SAR        EAX,0x2
	001011ea 83 e0 01        AND        EAX,0x1
	001011ed 89 c6           MOV        args,EAX
	001011ef 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001011f3 0f b6 c0        MOVZX      EAX,AL
	001011f6 c1 f8 03        SAR        EAX,0x3
	001011f9 83 e0 01        AND        EAX,0x1
	001011fc 41 89 c1        MOV        R9D,EAX
	001011ff 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101203 0f b6 c0        MOVZX      EAX,AL
	00101206 c1 f8 04        SAR        EAX,0x4
	00101209 83 e0 01        AND        EAX,0x1
	0010120c 41 89 c2        MOV        R10D,EAX
	0010120f 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101213 0f b6 c0        MOVZX      EAX,AL
	00101216 c1 f8 05        SAR        EAX,0x5
	00101219 83 e0 01        AND        EAX,0x1
	0010121c 89 c1           MOV        ECX,EAX
	0010121e 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101222 0f b6 c0        MOVZX      EAX,AL
	00101225 c1 f8 06        SAR        EAX,0x6
	00101228 83 e0 01        AND        EAX,0x1
	0010122b 89 c2           MOV        EDX,EAX
	0010122d 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101231 c0 e8 07        SHR        AL,0x7
	00101234 0f b6 c0        MOVZX      EAX,AL
	00101237 48 83 ec 08     SUB        RSP,0x8
	0010123b 41 50           PUSH       R8
	0010123d 57              PUSH       argc
	0010123e 56              PUSH       args
	0010123f 45 89 d0        MOV        R8D,R10D
	00101242 89 c6           MOV        args,EAX
	00101244 48 8d 05        LEA        RAX,[s_Value_bits_=_0b%i%i%i%i%i%i%i%i_00102038] = "Value bits  = 0b%i%i%i%i%i%i%
	ed 0d 00 00
	0010124b 48 89 c7        MOV        argc=>s_Value_bits_=_0b%i%i%i%i%i%i%i%i_001020   = "Value bits  = 0b%i%i%i%i%i%i%
	0010124e b8 00 00        MOV        EAX,0x0
	00 00
00101253 e8 f8 fd        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	00101258 48 83 c4 20     ADD        RSP,0x20
	0010125c 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101260 83 c8 01        OR         EAX,0x1
	00101263 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	00101266 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	0010126a 83 e0 fd        AND        EAX,0xfffffffd
	0010126d 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	00101270 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101274 83 c8 04        OR         EAX,0x4
	00101277 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	0010127a 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	0010127e 83 e0 f7        AND        EAX,0xfffffff7
	00101281 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	00101284 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101288 83 e0 ef        AND        EAX,0xffffffef
	0010128b 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	0010128e 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101292 83 c8 20        OR         EAX,0x20
	00101295 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	00101298 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	0010129c 83 c8 40        OR         EAX,0x40
	0010129f 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	001012a2 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001012a6 83 e0 7f        AND        EAX,0x7f
	001012a9 88 45 ec        MOV        byte ptr [RBP + MultiBool1],AL
	001012ac 48 8d 05        LEA        RAX,[s__Assigning_10100110_(ABCDEFGH)_u_001020   = "\nAssigning 10100110 (ABCDEFG
	ad 0d 00 00
	001012b3 48 89 c7        MOV        argc=>s__Assigning_10100110_(ABCDEFGH)_u_00102   = "\nAssigning 10100110 (ABCDEFG
001012b6 e8 75 fd        CALL       <EXTERNAL>::puts                                 int puts(char * __s)
	ff ff
	001012bb 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001012bf c0 e8 07        SHR        AL,0x7
	001012c2 44 0f b6 c0     MOVZX      R8D,AL
	001012c6 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001012ca c0 e8 06        SHR        AL,0x6
	001012cd 83 e0 01        AND        EAX,0x1
	001012d0 0f b6 f8        MOVZX      argc,AL
	001012d3 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001012d7 c0 e8 05        SHR        AL,0x5
	001012da 83 e0 01        AND        EAX,0x1
	001012dd 0f b6 f0        MOVZX      args,AL
	001012e0 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001012e4 c0 e8 04        SHR        AL,0x4
	001012e7 83 e0 01        AND        EAX,0x1
	001012ea 44 0f b6 c8     MOVZX      R9D,AL
	001012ee 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001012f2 c0 e8 03        SHR        AL,0x3
	001012f5 83 e0 01        AND        EAX,0x1
	001012f8 44 0f b6 d0     MOVZX      R10D,AL
	001012fc 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101300 c0 e8 02        SHR        AL,0x2
	00101303 83 e0 01        AND        EAX,0x1
	00101306 0f b6 c8        MOVZX      ECX,AL
	00101309 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	0010130d d0 e8           SHR        AL,0x1
	0010130f 83 e0 01        AND        EAX,0x1
	00101312 0f b6 d0        MOVZX      EDX,AL
	00101315 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101319 83 e0 01        AND        EAX,0x1
	0010131c 0f b6 c0        MOVZX      EAX,AL
	0010131f 48 83 ec 08     SUB        RSP,0x8
	00101323 41 50           PUSH       R8
	00101325 57              PUSH       argc
	00101326 56              PUSH       args
	00101327 45 89 d0        MOV        R8D,R10D
	0010132a 89 c6           MOV        args,EAX
	0010132c 48 8d 05        LEA        RAX,[s_Bits_ABCDEFGH_=_0b%i%i%i%i%i%i%i_001020   = "Bits ABCDEFGH = 0b%i%i%i%i%i%
	65 0d 00 00
	00101333 48 89 c7        MOV        argc=>s_Bits_ABCDEFGH_=_0b%i%i%i%i%i%i%i_00102   = "Bits ABCDEFGH = 0b%i%i%i%i%i%
	00101336 b8 00 00        MOV        EAX,0x0
	00 00
0010133b e8 10 fd        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	00101340 48 83 c4 20     ADD        RSP,0x20
	00101344 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101348 0f b6 c0        MOVZX      EAX,AL
	0010134b 83 e0 01        AND        EAX,0x1
	0010134e 41 89 c0        MOV        R8D,EAX
	00101351 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101355 0f b6 c0        MOVZX      EAX,AL
	00101358 d1 f8           SAR        EAX,0x1
	0010135a 83 e0 01        AND        EAX,0x1
	0010135d 89 c7           MOV        argc,EAX
	0010135f 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101363 0f b6 c0        MOVZX      EAX,AL
	00101366 c1 f8 02        SAR        EAX,0x2
	00101369 83 e0 01        AND        EAX,0x1
	0010136c 89 c6           MOV        args,EAX
	0010136e 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101372 0f b6 c0        MOVZX      EAX,AL
	00101375 c1 f8 03        SAR        EAX,0x3
	00101378 83 e0 01        AND        EAX,0x1
	0010137b 41 89 c1        MOV        R9D,EAX
	0010137e 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101382 0f b6 c0        MOVZX      EAX,AL
	00101385 c1 f8 04        SAR        EAX,0x4
	00101388 83 e0 01        AND        EAX,0x1
	0010138b 41 89 c2        MOV        R10D,EAX
	0010138e 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	00101392 0f b6 c0        MOVZX      EAX,AL
	00101395 c1 f8 05        SAR        EAX,0x5
	00101398 83 e0 01        AND        EAX,0x1
	0010139b 89 c1           MOV        ECX,EAX
	0010139d 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001013a1 0f b6 c0        MOVZX      EAX,AL
	001013a4 c1 f8 06        SAR        EAX,0x6
	001013a7 83 e0 01        AND        EAX,0x1
	001013aa 89 c2           MOV        EDX,EAX
	001013ac 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001013b0 c0 e8 07        SHR        AL,0x7
	001013b3 0f b6 c0        MOVZX      EAX,AL
	001013b6 48 83 ec 08     SUB        RSP,0x8
	001013ba 41 50           PUSH       R8
	001013bc 57              PUSH       argc
	001013bd 56              PUSH       args
	001013be 45 89 d0        MOV        R8D,R10D
	001013c1 89 c6           MOV        args,EAX
	001013c3 48 8d 05        LEA        RAX,[s_Value_bits_=_0b%i%i%i%i%i%i%i%i_001020c0] = "Value bits    = 0b%i%i%i%i%i%
	f6 0c 00 00
	001013ca 48 89 c7        MOV        argc=>s_Value_bits_=_0b%i%i%i%i%i%i%i%i_001020   = "Value bits    = 0b%i%i%i%i%i%
	001013cd b8 00 00        MOV        EAX,0x0
	00 00
001013d2 e8 79 fc        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	001013d7 48 83 c4 20     ADD        RSP,0x20
	001013db 0f b6 45 ec     MOVZX      EAX,byte ptr [RBP + MultiBool1]
	001013df 0f b6 c0        MOVZX      EAX,AL
	001013e2 89 c6           MOV        args,EAX
	001013e4 48 8d 05        LEA        RAX,[s_Value_hex_=_0x%01x_001020e4]              = "Value hex     = 0x%01x\n"
	f9 0c 00 00
	001013eb 48 89 c7        MOV        argc=>s_Value_hex_=_0x%01x_001020e4,RAX          = "Value hex     = 0x%01x\n"
	001013ee b8 00 00        MOV        EAX,0x0
	00 00
001013f3 e8 58 fc        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	001013f8 48 8b 45 f0     MOV        RAX,qword ptr [RBP + MultiBool_PTR]
	001013fc 8b 00           MOV        EAX,dword ptr [RAX]
	001013fe 89 c6           MOV        args,EAX
	00101400 48 8d 05        LEA        RAX,[s_From_int*_=_0x%04x_001020fc]              = "From int*     = 0x%04x\n"
	f5 0c 00 00
	00101407 48 89 c7        MOV        argc=>s_From_int*_=_0x%04x_001020fc,RAX          = "From int*     = 0x%04x\n"
	0010140a b8 00 00        MOV        EAX,0x0
	00 00
0010140f e8 3c fc        CALL       <EXTERNAL>::printf                               int printf(char * __format, ...)
	ff ff
	00101414 b8 00 00        MOV        EAX,0x0
	00 00
	00101419 48 8b 55 f8     MOV        RDX,qword ptr [RBP + GCC_STACK_SAFETY]
	0010141d 64 48 2b        SUB        RDX,qword ptr FS:[0x28]
	14 25 28 
	00 00 00
	00101426 74 05           JZ         LAB_0010142d
00101428 e8 13 fc        CALL       <EXTERNAL>::__stack_chk_fail                     undefined __stack_chk_fail()
	ff ff
	-- Flow Override: CALL_RETURN (CALL_TERMINATOR)
	LAB_0010142d                                    XREF[1]:     00101426(j)  
	0010142d c9              LEAVE
	0010142e c3              RET

