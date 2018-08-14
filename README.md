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
date = DateInDays.new([Date], [Month], [Year], [Days to Pass])
```
`Date (Integer)` - Starting day
`Month (String)` - Starting month
`Year (Integer)` - Starting year
`Days to Pass (Integer)` - Number of days to pass

To get the values:
```rb
date.date # Integer for date
date.month # String for month
date.year # Integer for year
```
