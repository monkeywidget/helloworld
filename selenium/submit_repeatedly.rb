require "selenium-webdriver"

# to run:
#    bundle install
#    bundle exec ruby submit_repeatedly.rb

TARGET_URL_PAGE = "http://google.com"

def new_driver_and_click(counter, total)
  driver = Selenium::WebDriver.for :firefox
  driver.navigate.to TARGET_URL_PAGE

  # puts "DEBUG: #{driver.title} (#{counter} of #{total})"

  # id example
  driver.find_element(:id, "id_here1").click

  # css example, with child span
  driver.find_element(:css, "#id_here2 > span").click

  driver.quit
end

counter = 0
total = 203

total.times do
  counter += 1
  new_driver_and_click(counter, total)

end

