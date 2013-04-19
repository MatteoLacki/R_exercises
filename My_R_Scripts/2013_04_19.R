x <- rnorm(100)
X <- as.data.frame(matrix(rnorm(1000), nrow=100, ncol=10))
y <- as.data.frame(rpois(100, lambda=2))

colnames(X) <- c("Bla1","Bla2","Bla3","Merda","Bimbo","Fanta","Octopus","Yes","Worm","Cookie")
colnames(y) <- "Regressor"

X[with(X, order(-z, b)), ]

dim(X)
?lm

model <- lm(y ~ ., data=X)
summary(model)

model2  <- asS4(model)

summary.lm

model3 <- model
#class(model3) <- "modified_lm"
Z <- summary(model3)
class(Z) <- "summary.modified_lm"
print(Z)

is.element(x, lista)

# "%in%"

# Tworzenie własnego operatora:

#'%<>%' <- function(a,b) (return(a != b))

#3 %<>% 4

class(summary(model))


# To sprawdza dostępne metody dla danej klasy.
methods(class="lm")
methods(class="summary.lm")


?? print.summary.lm # żeby sprawdzić namespace print.summary.lm
stats:::print.summary.lm

#'+.lm' <- function(a,b) list(a,b)