class SenatorsController < ApplicationController

  def new
    binding.pry
    # @senator = Senator.new
    render :new
  end

  def create
    
    url = "http://congress.api.sunlightfoundation.com//bills?apikey=df5394c089794f19ae950ce2aca1b096"
    response = HTTParty.get(url)

    @district = Congress.legislators_locate(params[:zipcode])
    @district_sen = @district["results"].select {|leg| leg["title"] == "Sen" && leg["state_rank"] == "senior"}
    @first_name = @district_sen[0]['first_name']
    @last_name = @district_sen[0]['last_name']
    @phone = @district_sen[0]['phone']
    @website = @district_sen[0]['website']
    @twitter_id = @district_sen[0]['twitter_id']

    # @my_congress = Congress.legislators
    # @my_senator = @my_congress["results"].select {|leg| leg["first_name"] == @first_name && leg["last_name"] == @last_name}
    # @

     @senator = Senator.create(first_name: @first_name, last_name: @last_name, phone: @phone, website: @website, twitter_id: @twitter_id)


    redirect_to senator_path(@senator)


  end

  def show
    @senator = Senator.find(params[:id])
    render :show
  end

end