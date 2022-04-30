# benchmark-on-instantiation-and-classmethod

Benchmark on ruby instance method call and class method call

prerequisite: redis

```bash
bundle
rake
```

# result at 2022-04-30 11:46:54

```bash
# Darwin bxzy 20.6.0 Darwin Kernel Version 20.6.0: Wed Nov 10 22:23:07 PST 2021; root:xnu-7195.141.14~1/RELEASE_X86_64 x86_64
Rehearsal ---------------------------------------------------------------------------
no   instance and no   external service   2.332551   0.008691   2.341242 (  2.344434)
have instance and no   external service   2.294979   0.002401   2.297380 (  2.297758)
no   instance and have external service   0.276643   0.167536   0.444179 (  0.600787)
have instance and have external service   0.266401   0.164336   0.430737 (  0.589392)
------------------------------------------------------------------ total: 5.513538sec

                                              user     system      total        real
no   instance and no   external service   2.497151   0.018276   2.515427 (  2.519833)
have instance and no   external service   2.430430   0.011964   2.442394 (  2.445525)
no   instance and have external service   0.260420   0.163490   0.423910 (  0.580644)
have instance and have external service   0.260263   0.162990   0.423253 (  0.580672)

# Linux xiaoli 4.15.0-117-generic #118-Ubuntu SMP Fri Sep 4 20:02:41 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
Rehearsal ---------------------------------------------------------------------------
no   instance and no   external service   2.020468   0.013341   2.033809 (  2.111696)
have instance and no   external service   2.024467   0.020140   2.044607 (  2.113885)
no   instance and have external service   0.124885   0.062759   0.187644 (  0.332640)
have instance and have external service   0.139362   0.054399   0.193761 (  0.343617)
------------------------------------------------------------------ total: 4.459821sec

                                              user     system      total        real
no   instance and no   external service   2.018769   0.015624   2.034393 (  2.115190)
have instance and no   external service   1.946485   0.028283   1.974768 (  2.043722)
no   instance and have external service   0.137543   0.073404   0.210947 (  0.367617)
have instance and have external service   0.167008   0.105960   0.272968 (  0.465161)
```

# other

+ TODO code cleanup
+ TODO simplify a bit
+ TODO naming...
