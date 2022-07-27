/*
 * This is the disassembled result from Ghidra
 * Modifications have been made to make the code more readable and type correction

 -------------------------

 Often written as int main(int argc, char** argv)
 The return value of a programme under linux is always an 8 bit status
 */
uchar main(int argc, char** args)
{
	/*
	   These values were added by GCC, I've made a guess at their function?
	 */
	long GCC_STACK_SAFETY_in_FS_OFFSET;
	undefined8 uVar1;

	/*
	   Data from original programme
	 */
	MultiBool_t MultiBool1;
	MultiBool_t MultiBool2;
	MultiBool_t MultiBool3;
	MultiBool_t MultiBool4;
	uint *MultiBool_PTR;

	/*
	   These values appear to have been added by GCC,
	   I do not know their function but guessed it's stack safety related.
	 */
	long GCC_STACK_SAFETY;
	GCC_STACK_SAFETY = *(long *)(GCC_STACK_SAFETY_in_FS_OFFSET + 0x28);

	/*
	   This looks wrong, however the value 1 has been moved directly into the correct stack
	   location in the ASM, the C decompile misses this and appears to lose the value
	 */
	printf("Structure size = %i\n");
	MultiBool1 = 0xaa;
	MultiBool2 = 0xbb;
	MultiBool3 = 0xcc;
	MultiBool4 = 0xdd;
	MultiBool_PTR = (uint *)&MultiBool1;

	/*
	   Another magic GCC value
	 */
	uVar1 = 0x1011c5;

	printf("Value hex = 0x%01x\n");
	printf("Value bits  = 0b%i%i%i%i%i%i%i%i\n",(ulong)(MultiBool1 >> 7),
			(ulong)((int)(uint)MultiBool1 >> 6 & 1),(ulong)((int)(uint)MultiBool1 >> 5 & 1),
			(ulong)((int)(uint)MultiBool1 >> 4 & 1),(ulong)((int)(uint)MultiBool1 >> 3 & 1),
			(ulong)((int)(uint)MultiBool1 >> 2 & 1),(ulong)((int)(uint)MultiBool1 >> 1 & 1),
			(ulong)(MultiBool1 & 1),uVar1,args);
	/*                               ^      ^
									 These values have been added, I'm not sure what magics them here,
									 could just be artifacts of the decompilation
	 */

	/*
	   GCC was smart and merged the individual bit assignments into a single move, noting it treats the locations
	   as individual bytes, ignoring the union.
	 */
	MultiBool1 = 0x65;

	/*
	   Magic number again?
	 */
	uVar1 = 0x1012bb;

	/*
	   GCC has been clever and recognised I didn't use any of the printf formatting options
	   as such it optimised to use puts
	 */
	puts("\nAssigning 10100110 (ABCDEFGH) using the Bits structure");
	printf("Bits ABCDEFGH = 0b%i%i%i%i%i%i%i%i\n",(ulong)(MultiBool1 & 1),(ulong)(MultiBool1 >> 1 & 1)
			,(ulong)(MultiBool1 >> 2 & 1),(ulong)(MultiBool1 >> 3 & 1),(ulong)(MultiBool1 >> 4 & 1),
			(ulong)(MultiBool1 >> 5 & 1),(ulong)(MultiBool1 >> 6 & 1),(ulong)(MultiBool1 >> 7),uVar1);
	printf("Value bits    = 0b%i%i%i%i%i%i%i%i\n",(ulong)(MultiBool1 >> 7),
			(ulong)((int)(uint)MultiBool1 >> 6 & 1),(ulong)((int)(uint)MultiBool1 >> 5 & 1),
			(ulong)((int)(uint)MultiBool1 >> 4 & 1),(ulong)((int)(uint)MultiBool1 >> 3 & 1),
			(ulong)((int)(uint)MultiBool1 >> 2 & 1),(ulong)((int)(uint)MultiBool1 >> 1 & 1),
			(ulong)(MultiBool1 & 1));
	printf("Value hex     = 0x%01x\n",(ulong)MultiBool1);
	printf("From int*     = 0x%04x\n",(ulong)*MultiBool_PTR);

	/*
	   GCC added check, I'm assuming this is a part of the stack safety options
	 */
	if (GCC_STACK_SAFETY != *(long *)(GCC_STACK_SAFETY_in_FS_OFFSET + 0x28)) {
		/* WARNING: Subroutine does not return */
		__stack_chk_fail();
	}
	return '\0';
}


