class MainWelcome
	attr_accessor :welcomeText
	attr_accessor :date
	attr_accessor :imageUri

	def initialize(date, hour, month)
		@date = date
		@hour = hour
		@month = month
		@imageUri = "https://github.com/SuperBigBang/TestReactNativeApp4NorNick/blob/master/js/resources/localTestResources/april.png?raw=true"

chooseWelcomeText
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

end