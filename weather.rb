# Your methods should take in a hash as an argument - here's an example of what the hash will look like - the methods should take this hash as an argument and return the desired output. 

# weather = {
# 	:city => "New York",
# 	:description => "Partly Cloudy",
# 	:temperature_farenheit => 66.3
# }
nyc_weather = {
  :city => "New York",
  :description => "Partly Cloudy",
  :temperature_farenheit => 75,
  :temperature_celcius => 19.1
}

sf_weather = {
  :city => "San Francisco",
  :description => "Sunny",
  :temperature_farenheit => 58.3,
  :temperature_celcius => 14.6
}
    
# 1. Complete the method below called location, that accepts a hash called weather as an argument so that it returns the value of city from the weather hash. 
def location(weather)
	return weather[:city]
end

# 2. Using the location method as a guide, write a  method called "description" so it returns the description from the weather hash. 
def description(weather)
  return weather[:description]
end

# 3. Using the methods above and string interpolation, update the method below so that it returns a string that describes the current weather - for example: "The weather in New York is Partly Cloudy. The temperature is 66.1 degrees Farenheit." HINT: the method should RETURN the string, not print it to the terminal. 
def weather_report(weather)
  return "The weather in #{weather[:city]} is #{weather[:description]}. The temperature is #{weather[:temperature_farenheit]} degrees Farenheit."
end

#4. Write a method that takes in the weather hash as an argument. 
# You'll want to use the each method to iterate over the hash and print out
# `The city is New York.` `The description is Partly Cloudy.` `The temperature is 66.3.`
def city_weather_info(weather) 
  weather.each do |description, info|
    "The #{description} is #{info}."
  end
end

# BONUS:  Write a method that takes in the weather hash as an argument and converts the farenheit temperature to celcius. Have the method round your answer to two decimal places. Is there a method we can use to round in Ruby?

# Hint - how can we find the algorithm to convert Farenheit to Celsius?
def convert_temp(weather) 
  temp = weather[:temperature_farenheit]
  puts temp
  celsius = (temp-32.0)*(5.0/9.0)
  puts celsius
  celsius = (celsius*100).round/100.0
  return celsius
end

puts convert_temp(nyc_weather)
