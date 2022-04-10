#inisialisasi variabel
p = 0.20
x = 3
#a (peluang penyurvei)
dgeom(x,p)

#b (mean distribusi geometrik)
mean(rgeom(n = 10000, prob = p) == x)

#c
#perbedaan tidak jauh beda, dengan beda sebesar 0.0033,
#dapat disimpulkan bahwa berapapun nilai random, jika
#probabilitas dan x sama, nilai tidak akan jauh beda

#d
x_dgeom <- seq(0, 10000, by = x)
y_dgeom <- dgeom(x_dgeom, prob = p)
plot(y_dgeom)

#e (rataan dan varian)
#>rataan
1 / p
#>varian
(1 - p) / p^2

