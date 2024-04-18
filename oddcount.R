# Подсчитывает количество нечетных целых чисел в х
oddcount <- function(x) {
	k <- 0 # Присвоить k значение 0

	for (n in x) {
		if (n %% 2 == 1){
			k <- k+1 # %% - оператор вычисления остатка
		}
	}
	return(k)
}

print(oddcount(c(1,2,3,5,4,7,9,8)))
# source("C:\\Users\\Peter\\Desktop\\oddcount.R")