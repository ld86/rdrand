#include <cstdlib>
#include <cstdio>

extern "C" bool rdrandAvailable();
extern "C" size_t rdrand();

int main() {
    if (rdrandAvailable()) {
        printf("%llu\n", rdrand());
    }
}
