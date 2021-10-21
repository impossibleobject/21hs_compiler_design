void loops(long n, long m, long v, long *count) {
    *count = 0;
    for (long i = 0; i < n; ++i)
        for (long j = 0; j < m; ++j)
            if ((i * j) % v == 1)
                *count += 1;
    return;
}
