# P1_Probstat_B_5025201209<br/>
## Soal 1<br/>
## Soal 2<br/>
###inisialisasi variabel untuk digunakan di dalam 2a, 2b, dan 2c
```r
#inisialisasi Variabel
n = 20
p = 0.2
success <- 0:20
```
Hasil dari inisialisasi variabel: <br/>
![variabel no 2](https://user-images.githubusercontent.com/78362238/162608873-77aeb30f-7c37-4093-bbf3-efe02d74d15c.jpeg)
<br/>
### Soal 2a
memasukkan jumlah pasien sembuh, jumlah total pasien dan probabilitas kedalam fungsi dbinom untuk menemukan peluang 4 pasien sembuh
```r
#a (peluang 4 pasien sembuh)
dbinom(4, size=n, prob=p)
#hasil = [1] 0.2181994
```
### Soal 2b
```r
#b (grafik histogram kasus)
plot(success,dbinom(success,size=n,prob=p),
     type='h',
     main='Binomial Distribution (n=20, p=0.3)',
     ylab='Probabilitas',
     xlab ='Jumlah Sukses',
     lwd=2)
```
Menggunakan fungsi plot, untuk membuat tabel histogram dengan:
- `type='h'` untuk membuat grafik histogram
- `main='Binomial Distribution (n=20, p=0.3)'` untuk menuliskan judul grafik
- `ylab` untuk menuliskan nama di bagian vertikal grafik sebagai "probabilitas"
- `xlab` untuk menuliskan nama di bagian horizontal grafik sebagai "Jumlah Sukses"
- `lwd=2` untuk menebalkan garis di dalam grafik <br/>
Hasil grafik: <br/>
![p1_histogram binomial no 2](https://user-images.githubusercontent.com/78362238/162609759-c9708c9c-5b5f-45c1-839f-1f42d4253c66.png)
### Soal 2c
```r
#c (rataan dan varian)
#>rataan
n*p
#>Varian
n*p*(1-p)
```
Rumus dari:
- Rataan atau mean dari distribusi binomial (n, p) = n * p = 20 * 0.2 = 4
- Varians dari distribusi binomial (n, p) = n * p * q = n * p * (1-p) = 20 * 0.2 * 0.8 = 3.2

## Soal 3<br/>
## Soal 4<br/>
## Soal 5<br/>
## Soal 6<br/>
