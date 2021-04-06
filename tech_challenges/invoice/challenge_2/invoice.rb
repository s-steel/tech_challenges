require 'date'

def bill_for(month, active_subscription, users)
  return 0 if users.empty?
#   first change the month into datetime format
  month_in_date_time = Date.new(month.split('-')[0].to_i, month.split('-')[1].to_i, 1)
#   pull the last day of month out to see the length of the month
  month_length = last_day_of_month(month_in_date_time).mday
# make sure to convert the price to a float otherwise it will return a integer  
  daily_rate = active_subscription[:monthly_price_in_dollars].to_f / month_length
#   start to determine number of active users
  number_of_users = users.find_all{ |u| u[:deactived_on].nil? == true }.length
  (number_of_users * daily_rate * month_length).round(2)
end

####################
# Helper functions #
####################

# Takes a Date object and returns a Date which is the first day
# of that month. For example:
#
# first_day_of_month(Date.new(2019, 2, 7)) # => Date.new(2019, 2, 1)
#
# Input type: Date
# Output type: Date
def first_day_of_month(date)
  Date.new(date.year, date.month)
end

# Takes a Date object and returns a Date which is the last day
# of that month. For example:
#
# last_day_of_month(Date.new(2019, 2, 7)) # => Date.new(2019, 2, 28)
#
# Input type: Date
# Output type: Date
def last_day_of_month(date)
  Date.new(date.year, date.month, -1)
end

# Takes a Date object and returns a Date which is the next day.
# For example:
#
# next_day(Date.new(2019, 2, 7))  # => Date.new(2019, 2, 8)
# next_day(Date.new(2019, 2, 28)) # => Date.new(2019, 3, 1)
#
# Input type: Date
# Output type: Date
def next_day(date)
  date.next_day
end