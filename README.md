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
x_dgeom <- seq(0, 10000, by = x)
y_dgeom <- dgeom(x_dgeom, prob = p)
plot(y_dgeom)
```
Menggunakan fungsi plot, untuk membuat tabel histogram dengan:
- `x_dgeom` untuk menuliskan data random (0 - 10000) dan distribusi geometri acak `x`
- `y_dgeom` untuk menggabungkan `x_dgeom` dengan probabilitas `p`
- `plot(y_dgeom)` menyajikan hasil lewat tabel histogram <br/>
Hasil grafik: <br/>
![p1_histogram geometrik no 1](https://user-images.githubusercontent.com/78362238/162614917-ddb9a68f-b6a2-4127-b40d-88050fc14088.png)
### Soal 1e
```r
#e (rataan dan varian)
#>rataan
1 / p
#>varian
(1 - p) / p^2
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
```
Rumus dari:
- Rataan atau mean dari distribusi binomial (n, p) = n * p = 20 * 0.2 = 4
- Varians dari distribusi binomial (n, p) = n * p * q = n * p * (1-p) = 20 * 0.2 * 0.8 = 3.2

## Soal 3<br/>
### inisialisasi variabel untuk digunakan di dalam 3a dna 3b
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
- `i` sebagai distribusi poisson
- `main`  untuk menuliskan judul grafik
- `xlab` untuk menuliskan nama di bagian horizontal grafik sebagai "kelahiran 6 bayi akan lahir di rumah sakit" 
Hasil grafik: <br/>
![p1_histogram poisson no 3](https://user-images.githubusercontent.com/78362238/162619414-d7ba1e09-dd27-4282-ba36-41e3a5e84ee0.png)
## soal 3c
Hasilnya tidak jauh beda, yaitu sebesar 0.0061265, menandakan jika x dan lambda sama, hasil tidak jauh berbeda walaupun ada periode (n = 365) maupun tidak ada periode
```r
#c 
#hasilnya tidak jauh beda, yaitu sebesar 0.0061265, 
#menandakan jika x dan lambda sama, hasil tidak
#jauh berbeda walaupun ada periode (n = 365) maupun tidak ada periode
```
## soal 3d
rataan atau mean distribusi poisson adalah Lambda = 4.5 <br/>
varians distribusi poisson adalah Lambda = 4.5 
```r
#d (rataan dan varian)
#rataan atau mean distribusi poisson adalah Lambda = 4.5
#varians distribusi poisson adalah Lambda = 4.5 
```
## Soal 4<br/>
## Soal 5<br/>
## Soal 6<br/>


to do:
perbaiki no 1 tabel histogram
