class MainWelcomeController < ApplicationController
def index
	dateTime = DateTime.now
    formattedDateAndTime = dateTime.strftime("%d/%m/%Y %H:%M")
    month = dateTime.month
    hour = dateTime.hour

	@mainWelcome = MainWelcome.new(formattedDateAndTime, hour, month)   
end

end
