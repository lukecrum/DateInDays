class DateInDays
  attr_accessor :date, :month, :year
  def initialize(date, month, year, days_to_pass)
    @date = date
    @month = month
    @year = year
    @days_left = days_to_pass
    while @days_left > 0
      new_day
      @days_left = @days_left - 1
    end
  end
  def new_day
    @year = @year.to_f
    if @date == 28 || @date == 29 || @date == 30 || @date == 31
      if @month == "January" && @date >= 31
        @month = "February"
        @date = 1
      elsif @month == "February" && @date == 28
        v = @year / 4
        unless v % 1 == 0
          @month = "March"
          @date = 1
        else
          @date = @date + 1
        end
      elsif @month == "February" && @date >= 29
        @month = "March"
        @date = 1
      elsif @month == "March" && @date >= 31
        @month = "April"
        @date = 1
      elsif @month == "April" && @date >= 30
        @month = "May"
        @date = 1
      elsif @month == "May" && @date >= 31
        @month = "June"
        @date = 1
      elsif @month == "June" && @date >= 30
        @month = "July"
        @date = 1
      elsif @month == "July" && @date >= 31
        @month = "August"
        @date = 1
      elsif @month == "August" && @date >= 31
        @month = "September"
        @date = 1
      elsif @month == "September" && @date >= 30
        @month = "October"
        @date = 1
      elsif @month == "October" && @date >= 31
        @month = "November"
        @date = 1
      elsif @month == "November" && @date >= 30
        @month = "December"
        @date = 1
      elsif @month == "December" && @date >= 31
        @month = "January"
        @date = 1
        @year = @year + 1
      else
        @date = @date + 1
      end
    else
      @date = @date + 1
    end
    @year = @year.to_i
  end
end
