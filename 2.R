#inisialisasi Variabel
n = 20
p = 0.2
success <- 0:20

#a (peluang 4 pasien sembuh)
dbinom(4, size=n, prob=p)

#b (grafik histogram kasus)
plot(success,dbinom(success,size=n,prob=p),
     type='h',
     main='Binomial Distribution (n=20, p=0.3)',
     ylab='Probabilitas',
     xlab ='Jumlah Sukses',
     lwd=2)

#c (rataan dan varian)
#>rataan
n*p
#>Varian
n*p*(1-p)

