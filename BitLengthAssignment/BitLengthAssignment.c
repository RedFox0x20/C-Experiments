#include <stdio.h>

/*
 * union MultiBool_t
 * Contains sub structure struct Bits that contains 8 single bit value
 * Plus an addition uchar Value that can reference the 8 bits as a whole
 */
typedef union
{
	/*
	 * Structure of 8 single bit values, these will be the booleans
	 */
	struct {
		unsigned char A :1, /* Bit position 0 on LE */
					  B :1,
					  C :1,
					  D :1,
					  E :1,
					  F :1,
					  G :1,
					  H :1; /* Bit position 7 on LE */
	} Bits;
	/*
	 * Additional Value to view all 8 bits at once
	 */
	unsigned char Value;
} MultiBool_t;


int main(int argc, char **argv)
{
	/*
	 * Output the size of the structure, we should see that it only occupies 1 byte
	 */
	printf("Structure size = %i\n", sizeof(MultiBool_t));

	/*
	 * Initialise a MultiBool_t structure with all bits set to zero
	 * 3 additional structures are created to show how memory is handled, this will be shown with the int*
	 * Create an int* to the bool so that we can see how the structures are stored in memory 
	 */
	MultiBool_t MB = { .Value = 0xAA };
	MultiBool_t MB2 = { .Value = 0xBB };
	MultiBool_t MB3 = { .Value = 0xCC };
	MultiBool_t MB4 = { .Value = 0xDD };
	int* x = (int*)&MB;

	printf("Value hex = 0x%01x\n", MB.Value);
	printf("Value bits  = 0b%i%i%i%i%i%i%i%i\n", (MB.Value & (1<<7)) >> 7, (MB.Value & (1<<6)) >> 6, (MB.Value & (1<<5)) >> 5, (MB.Value & (1<<4)) >> 4, (MB.Value & (1<<3)) >> 3, (MB.Value & (1<<2))>>2, (MB.Value & (1<<1))>>1, MB.Value & 1);

	/*
	 * Assign some values individually
	 */
	MB.Bits.A = 1;
	MB.Bits.B = 0;
	MB.Bits.C = 1;
	MB.Bits.D = 0;
	MB.Bits.E = 0;
	MB.Bits.F = 1;
	MB.Bits.G = 1;
	MB.Bits.H = 0;
	printf("\nAssigning 10100110 (ABCDEFGH) using the Bits structure\n");
	printf("Bits ABCDEFGH = 0b%i%i%i%i%i%i%i%i\n", MB.Bits.A, MB.Bits.B, MB.Bits.C, MB.Bits.D, MB.Bits.E, MB.Bits.F, MB.Bits.G, MB.Bits.H);
	printf("Value bits    = 0b%i%i%i%i%i%i%i%i\n", (MB.Value & (1<<7)) >> 7, (MB.Value & (1<<6)) >> 6, (MB.Value & (1<<5)) >> 5, (MB.Value & (1<<4)) >> 4, (MB.Value & (1<<3)) >> 3, (MB.Value & (1<<2))>>2, (MB.Value & (1<<1))>>1, MB.Value & 1);
	printf("Value hex     = 0x%01x\n", MB.Value);
	printf("From int*     = 0x%04x\n", *x);
	return 0;
}
