#R script to test the law of large numbers
# With the higher n, count/n reaches the expected value

n <- 100000
expected <- 0.682
count <- 0
for(i in 1:n){
  y <- rnorm(n, mean=0, sd=1)
  if(y > -1 & y < 1){
    count <- count + 1
  }else{
    count <- count
  }
}
print(count/n)