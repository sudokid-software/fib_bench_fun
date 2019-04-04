#include <stdio.h>
 /* botfelk */
int main(void) {
    unsigned long long a, b, tmp;
    a = b = 1;
    while((tmp = a+b) <= 1779979416004714189) {
        a = b;
        b = tmp;
        printf("%20llu\n", tmp);
    }
}

