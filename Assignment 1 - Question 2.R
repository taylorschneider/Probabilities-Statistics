events <- (-3),(-2),0,1,4,6
probabilities <- c(.174,.092,.023,.340,.341,.030)
expected_value <- sum(events*probabilities)
squared_differences <- (events-expected_values)^2
variance <- sum(squared_differences*probabilities)
print(expected_value)
print(variance)


expected.value <-function(events, probabilities) {sum(events*probabilities)}
variance <- function(events, probabilities) {
  expected.value <- expected.value(events, probabilities)
  squared.differences <- (events-expected.value)^2
  sum(squared.differences*probabilities)
  }


kurtosis <-function(events, probabilities) {sum(events*probabilities)/2}

kurtosis (events, c(.174,.092,.023,.340,.341,.030))
         