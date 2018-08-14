# DateInDays
Ruby class to output the date in a given amount of days from a given date.

# Usage
Add `date_in_days.rb` to your project folder

Require it
```rb
require_relative 'date_in_days.rb'
```

Create a new insrance of DateInDays
```rb
date = DateInDays.new(date: 14, month: 'August', year: 2018, 365)
```
`Date` - Starting day
`Month` - Starting month
`Year` - Starting year
`[days_to_pass]` - Number of days to pass

To get the values:
```rb
date.date # Integer for date
date.month # String for month
date.year # Integer for year
```
