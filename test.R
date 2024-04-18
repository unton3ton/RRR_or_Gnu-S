# pdf("xh.pdf") # Выбрать выходной файл
# a <- rnorm(100)
# print(a)
# hist(a) # Сгенерировать 100 переменных N(0,1)
# # и построить гистограмму
# dev.off() # Закрыть выходной файл


# Load the installed packages 
pdf("Nile.pdf")
hist(Nile, breaks=12)
dev.off()