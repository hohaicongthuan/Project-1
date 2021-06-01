#include <stdint.h>
#include <stdio.h>

/////////////////////////////////////////////////////////////////////////////////
// THIS FUNCTION IS OBTAINED FROM https://en.wikipedia.org/wiki/Rijndael_S-box //
/////////////////////////////////////////////////////////////////////////////////
#define ROTL8(x,shift) ((uint8_t) ((x) << (shift)) | ((x) >> (8 - (shift))))

void initialize_aes_sbox(uint8_t sbox[256]) {
	uint8_t p = 1, q = 1;
	
	/* loop invariant: p * q == 1 in the Galois field */
	do {
		/* multiply p by 3 */
		p = p ^ (p << 1) ^ (p & 0x80 ? 0x1B : 0);

		/* divide q by 3 (equals multiplication by 0xf6) */
		q ^= q << 1;
		q ^= q << 2;
		q ^= q << 4;
		q ^= q & 0x80 ? 0x09 : 0;

		/* compute the affine transformation */
		uint8_t xformed = q ^ ROTL8(q, 1) ^ ROTL8(q, 2) ^ ROTL8(q, 3) ^ ROTL8(q, 4);

		sbox[p] = xformed ^ 0x63;
	} while (p != 1);

	/* 0 is a special case since it has no inverse */
	sbox[0] = 0x63;
} 
//////////////////////////////////////////////////////////////////////////////////

int main() {
    uint8_t sbox[256];
    uint8_t count = 0;
    
	// initialize_aes_sbox(sbox);

	// Print S-box with predefined loop (256 times)
	uint8_t p = 1; uint8_t q = 1;
	for (int i = 0; i < 256; i = i + 1) {
		/* multiply p by 3 */
		p = p ^ (p << 1) ^ (p & 0x80 ? 0x1B : 0);

		/* divide q by 3 (equals multiplication by 0xf6) */
		q ^= q << 1;
		q ^= q << 2;
		q ^= q << 4;
		q ^= q & 0x80 ? 0x09 : 0;

		/* compute the affine transformation */
		uint8_t xformed = q ^ ROTL8(q, 1) ^ ROTL8(q, 2) ^ ROTL8(q, 3) ^ ROTL8(q, 4);

		sbox[xformed ^ 0x63] = p;
	}
	// Special case
	sbox[0] = 0x52;

	// Print S-box
    for (int i = 0; i < 256; i = i + 1) {
        if (count < 16) {
            // printf("%02x", sbox[i]);
            count += 1;
        } else {
            count = 1;
            printf("\n");
            // printf("%02x", sbox[i]);
        }
        printf("%02x ", sbox[i]);
    }
}
