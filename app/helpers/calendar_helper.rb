module CalendarHelper
  def calendar(date = Date.today, &block)
#    Calendar.new(self, date, block).table
    Event.new(name: "test event")
  end

  def events_for_day
    Event.all #.where(:all)
  end
end
