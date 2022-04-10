#inisialisasi variabel
lambda = 4.5
x = 6
n = 365

#a (peluang 6 bayi lahir)
dpois(x, lambda)

#b (histogram )
set.seed(0)
i = rpois(n, lambda)
hist(i,
     main = "kelahiran 6 bayi akan lahir di rumah sakit selama setahun",
     xlab = "kelahiran 6 bayi akan lahir di rumah sakit")
mean(rpois(n, lambda) == 6)

#c 
#hasilnya tidak jauh beda, yaitu sebesar 0.0061265, 
#menandakan jika x dan lambda sama, hasil tidak
#jauh berbeda walaupun ada periode (n = 365) maupun tidak ada periode

#d (rataan dan varian)
#>rataan 
lambda
#>varians 
lambda 
     
