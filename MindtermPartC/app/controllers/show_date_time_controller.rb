class ShowDateTimeController < ApplicationController

	def display
    	@title = "Takehome Midterm -- Show Date and Time"
		t = Time.now
   	
    @date_time = t
    if t.hour >= 6 && t.hour <= 18 then
      @timeimg = "sun.png"
    else
      @timeimg = "moon.jpg"
    end
    @number = t.mon
    if t.mon == 1
      @monthname = "January"
      @monthimg = "jan.jpg"
    elsif t.mon == 2
      @monthname = "February"
      @monthimg = "feb.jpg"
    elsif t.mon == 3
      @monthname = "March"
      @monthimg = "mar.jpg"
    elsif t.mon == 4
      @monthname = "April"
      @monthimg = "apr.jpg"
    elsif t.mon == 5
      @monthname = "May"
      @monthimg = "may.jpg"
    elsif t.mon == 6
      @monthname = "June"
      @monthimg = "jun.jpg"
    elsif t.mon == 7
      @monthname = "July"
      @monthimg = "jul.jpg"
    elsif t.mon == 8
      @monthname = "August"
      @monthimg = "aug.jpg"
    elsif t.mon == 9
      @monthname = "September"
      @monthimg = "sep.jpg"
    elsif t.mon == 10
      @monthname = "October" 
      @monthimg = "oct.jpg"
    elsif t.mon == 11
      @monthname = "November" 
      @monthimg = "nov.jpg"
    elsif t.mon == 12
      @monthname = "December" 
      @monthimg = "dec.jpg"
    end



	end
end


