class MainWelcome < ApplicationRecord
  attr_accessor :welcomeText
	attr_accessor :date
	attr_accessor :imageUri

  def constructor(date, hour, month)
		@date = date
		@hour = hour
		@month = month

    chooseWelcomeText
    setImageURI
end

def chooseWelcomeText()
   if @hour >= 6 && @hour <= 11
   @welcomeText = "Доброе утро!"
   elsif @hour >= 13 && @hour <= 17
   @welcomeText = "Добрый день!"
   elsif @hour >= 18 && @hour <= 23
   @welcomeText = "Добрый вечер!"
   else
   @welcomeText = "Доброй ночи!"
   end
end

  def setImageURI()
    month_img = MonthImg.find_by(month_id: @month)
    @imageUri = month_img.month_img
  end
end