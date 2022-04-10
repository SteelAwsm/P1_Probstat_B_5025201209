# P1_Probstat_B_5025201209<br/>
## Soal 1<br/>
### inisialisasi variabel untuk digunakan di dalam 1a, 1b, 1d, dan 1e
```r
#inisialisasi variabel
p = 0.20
x = 3
```
Hasil dari inisialisasi variabel: <br/>
![variabel no 1](https://user-images.githubusercontent.com/78362238/162612634-5ab1f9b1-a7e1-4e1b-a69d-dfeff3f2b740.jpeg)
<br/>
### Soal 1a
memasukkan `x` sebagai orang yang tidak menghadiri acara vaksinasi, `p` sebagai probabilitas populasi menghadiri vaksinasi
```r
#a (peluang penyurvei)
dgeom(x,p)
#hasil = [1] 0.1024
```
### Soal 1b
memasukkan `n` sebagai 10000 data random, `p` sebagai probabilitas, dan `x` sebagai distribusi geometrik acak kedalam fungsi rgeom dan mencari mean-nya
```r
#b (mean distribusi geometrik)
mean(rgeom(n = 10000, prob = p) == x)
#hasil = [1] 0.1057
```
### Soal 1c
Perbedaan tidak jauh beda, dengan beda sebesar 0.0033, dapat disimpulkan bahwa berapapun nilai random, jika probabilitas dan x sama, hasil tidak akan jauh beda
```r
#c
#perbedaan tidak jauh beda, dengan beda sebesar 0.0033,
#dapat disimpulkan bahwa berapapun nilai random, jika
#probabilitas dan x sama, nilai tidak akan jauh beda
```
### Soal 1d
```r
#d
hist(rgeom(n = 10000, p),
     main='Geometric Distribution (n=10000, p=0.20)')
```
Menggunakan fungsi hist untuk membuat tabel histogram dengan:
- `rgeom(n = 10000, p)` digunakan untuk membuat deviasi random
- `main='Geometric Distribution (n=10000, p=0.20)'` untuk menuliskan judul grafik  

Hasil grafik: <br/>
![p1 histogram geometrik bener no 1](https://user-images.githubusercontent.com/78362238/162623579-4a254b2f-61a9-44e1-a518-7d887c7cdc44.png)
### Soal 1e
```r
#e (rataan dan varian)
#>rataan
1 / p
#>varian
(1 - p) / p^2
#hasil rataan = [1] 5
#hasil varian = [1] 20
```
Rumus dari:
- Rataan atau mean dari distribusi geometrik = 1 / p = 1 / 0.2 = 5
- Varians dari distribusi geometrik = (1 - p) / p^2 =(1 - 0.2) / 0.2^2 = 0.8 / 0.04 = 20 <br/>
## Soal 2<br/>
### inisialisasi variabel untuk digunakan di dalam 2a, 2b, dan 2c
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
#hasil rataan = [1] 4
#hasil varian = [1] 3.2
```
Rumus dari:
- Rataan atau mean dari distribusi binomial (n, p) = n * p = 20 * 0.2 = 4
- Varians dari distribusi binomial (n, p) = n * p * q = n * p * (1-p) = 20 * 0.2 * 0.8 = 3.2

## Soal 3<br/>
### inisialisasi variabel untuk digunakan di dalam 3a, 3b, dan 3d
```r
#inisialisasi variabel
lambda = 4.5
x = 6
n = 365
```
Hasil dari inisialisasi variabel: <br/>
![variabel no 3](https://user-images.githubusercontent.com/78362238/162618645-9048772b-ca89-410a-a8fc-181f1383ac26.jpeg)
<br/>
### Soal 3a
memasukkan lambda dan x untuk menemukan peluang 6 bayi lahir di hari selanjutnya atau besok
```r
#a (peluang 6 bayi lahir)
dpois(x, lambda)
#hasil = [1] 0.1281201
```
### Soal 3b
```r
#b (histogram )
set.seed(0)
i = rpois(n, lambda)
hist(i,
     main = "kelahiran 6 bayi akan lahir di rumah sakit selama setahun",
     xlab = "kelahiran 6 bayi akan lahir di rumah sakit")
mean(rpois(n, lambda) == 6)

#hasil = [1] 0.1342466
```
menggunakan fungsi hist untuk membuat tabel histogram dengan:
- `set.seed(0)` sebagai starting number untuk nomor yang di-generate secara random di `rpois`
- `i` sebagai distribusi poisson
- `main`  untuk menuliskan judul grafik
- `xlab` untuk menuliskan nama di bagian horizontal grafik sebagai "kelahiran 6 bayi akan lahir di rumah sakit" 
Hasil grafik: <br/>
![p1_histogram poisson no 3](https://user-images.githubusercontent.com/78362238/162619414-d7ba1e09-dd27-4282-ba36-41e3a5e84ee0.png)
### soal 3c
Hasilnya tidak jauh beda, yaitu sebesar 0.0061265, menandakan jika x dan lambda sama, hasil tidak jauh berbeda walaupun ada periode (n = 365) maupun tidak ada periode
```r
#c 
#hasilnya tidak jauh beda, yaitu sebesar 0.0061265, 
#menandakan jika x dan lambda sama, hasil tidak
#jauh berbeda walaupun ada periode (n = 365) maupun tidak ada periode
```
### soal 3d
```r
#d (rataan dan varian)
#>rataan 
lambda
#>varians 
lambda 
#hasil rataan = [1] 4.5
#hasil varian = [1] 4.5
```
Rumus dari:
- rataan atau mean distribusi poisson adalah Lambda = 4.5 <br/>
- varians distribusi poisson adalah Lambda = 4.5 
## Soal 4<br/>
### inisialisasi variabel untuk digunakan di dalam 4a, 4b, dan 4c
```r
#inisialisasi variabel
v = 2
x = 10
```
Hasil dari inisialisasi variabel: <br/>
![variabel no 4](https://user-images.githubusercontent.com/78362238/162622084-f6a0af28-f387-4b0d-afd9-845dca0578dd.jpeg)
<br/>
### soal 4a
Fungsi Probabilitas dari Distribusi Chi-Square dicapai menggunakan `dchisq ()` dengan memasukkan x dan v.
```r
#a (fungsi probabilitas distribusi Chi-Square)
dchisq (v, x)
#hasil = [1] 0.007664155
```
### soal 4b
```r
#b (histogram random distribution)
r = 100
hist (rchisq(r, x),
      main='Chi-Square Distribution (r=100, x=10)')
```
menggunakan fungsi hist untuk membuat tabel histogram dengan:
- `r` sebagai batas data random (100)
- `rchisq(r, x)` digunakan untuk membuat deviasi random
- `main='Chi-Square Distribution (r=100, x=10)'`  untuk menuliskan judul grafik <br/>
Hasil dari inisialisasi variabel: <br/>
![p1 histogram Chi Square no 4](https://user-images.githubusercontent.com/78362238/162623106-a247b8a0-9017-459d-8205-04aa37e84f42.png)
### soal 4c
```r
#c (rataan dan varian)
#>Rataan
rataan = v
print (rataan)
#>varian
2 * v
#hasil rataan = [1] 2
#hasil varian = [1] 4
```
Rumus dari:
- rataan atau mean distribusi Chi-Square adalah degree of freedom, atau v = 2
- varian distribusi Chi-Square adalah v * 2 = 2 * 2 = 4


## Soal 5<br/>
## Soal 6<br/>

