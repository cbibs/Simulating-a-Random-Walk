steps <- 100  
position_x <- numeric(steps + 1) 
position_y <- numeric(steps + 1) 
position_x[1] <- 0 
position_y[1] <- 0  

movements <- list(c(0, 1),  
                  c(0, -1),  
                  c(-1, 0), 
                  c(1, 0),  
                  c(0, 0))  


plot(position_x, position_y, type = "n", xlim = c(-steps, steps), ylim = c(-steps, steps), 
     xlab = "X Position", ylab = "Y Position", main = "2D Random Walk", xaxt = "n", yaxt = "n")


for (i in 2:(steps + 1)) {
  step <- sample(1:5, 1) 
  move <- movements[[step]] 
  position_x[i] <- position_x[i - 1] + move[1] 
  position_y[i] <- position_y[i - 1] + move[2] 
  
  plot(position_x, position_y, type = "n", 
       xlim = c(min(position_x) - 1, max(position_x) + 1), 
       ylim = c(min(position_y) - 1, max(position_y) + 1), 
       xlab = "X Position", ylab = "Y Position", main = "2D Random Walk", xaxt = "n", yaxt = "n")
  
  
  lines(position_x[1:i], position_y[1:i], col = "blue", lwd = 2)
  
  Sys.sleep(0.05)  
}

grid()

