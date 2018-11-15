context("Test for regression output")

#Expect fail
test_that("You should expect an error if the input is incorrect", {
    expect_error(lm_plot(continent, lifeExp,
                      mydata =gapminder))
})
test_that("You should expect an error if the input is incorrect", {
    expect_error(lm_plot(year, lifeExp,
                         mydata =gapminder))
})


#Expect pass
test_that("You should expect a pass if your inputs of x and y are correct", {
    expect_that(lm_plot(gapminder$continent, gapminder$lifeExp,
                      mydata =gapminder))
})

test_that("You should expect a pass if your inputs of x and y are correct", {
    expect_that(lm_plot(gapminder$year, gapminder$lifeExp,
                        mydata =gapminder))
})
