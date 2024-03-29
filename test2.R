---
  title: "Simple document"
output: html_document
---
  
  I'm an R Markdown document! 

# Section 1

Here's a **code chunk** that samples from 
a _normal distribution_:
  
  ```{r}
samp = rnorm(100)
length(samp)
```

# Section 2

I can take the mean of the sample, too!
  The mean is `r mean(samp)`.

# Section 3

Here is a simple data frame: 
  
  ```{r}
set.seed(1)

plot_df = tibble(
  x = rnorm(1000, sd = .5),
  y = 1 + 2 * x + rnorm(1000)
)

ggplot(plot_df, aes(x = x)) + geom_histogram()
```
