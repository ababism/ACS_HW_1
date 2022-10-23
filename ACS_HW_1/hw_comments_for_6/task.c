void task(const int* arr_a, int length, int* arr_b) {
    int i = 0;
    while (arr_a[i] <= 0 && i < length) {
        arr_b[i] = (arr_a[i] - 5);
        ++i;
    }

    while (i < length) {
        arr_b[i] = arr_a[i];
        ++i;
    }
}