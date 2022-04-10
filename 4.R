#inisialisasi variabel
v = 2
x = 10

#a (fungsi probabilitas distribusi Chi-Square)
dchisq (v, x)

#b (histogram random distribution)
r = 100
hist (rchisq(r, x),
      main='Chi-Square Distribution (r=100, x=10)')
      

#c (rataan dan varian)
#>Rataan
rataan = v
print (rataan)
#>varian
2 * v