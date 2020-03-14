#include <stdio.h>

int main(int argc, const char* *args) {
    double result = 0;
    int i;
    for (i = 1; i < 1000000000; ++i) {
        result += 1.0 / i;
    }
    return 0;
}