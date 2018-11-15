#' Display linear model in plot
#'
#' This function prints the results with simple linear regression model
#' in the form os a table or regression coefficients and qplot
#'
#' @param x The independent variable
#' @param y The dependent variable
#' @param mydata the dataframe to be analyzed
#'
#' @return A table and qplot
#' @rdname lm_plot
#' @example
#' lm_plot(x=gapminder$year,y=gapminder$lifeExp,mydata=gapminder)
#'
#' @export


lm_plot <- function(x,y,mydata){
    fit<-lm(y~x,data=mydata)
    t<- broom::tidy(fit)
    p<-ggplot2::qplot(x,y)
    print(t)
    print(p)
}
