// DracoMage
#include <stdio.h>

int main() {
    for(long i=0, j=1; printf("%20lu\n%20lu\n", i, j) && (j+=(i+=j))<=1779979416004714189;);
}
