#include "calculator.h"
#include <stdio.h>

int main() {
    int result_add = add(5, 3);
    int result_subtract = subtract(5, 3);

    printf("Addition: %d\n", result_add);
    printf("Subtraction: %d\n", result_subtract);

    return 0;
}
