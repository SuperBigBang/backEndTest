class MainWelcomeController < ApplicationController
  #include ActionView::Helpers::AssetUrlHelper

def index
  dateTime = DateTime.now
    formattedDateAndTime = dateTime.strftime("%d/%m/%Y %H:%M")
    month = dateTime.month
    hour = dateTime.hour

  @mainWelcome = MainWelcome.new(formattedDateAndTime, hour, month)

end

=begin
private
def new
  for i in 1..12
    month_img = MonthImg.create(month_id: i, month_img: image_url("/month/#{i}.png", host: "http://localhost:3000"))
    #MonthImg.destroy_all
  end
end
=end

end
