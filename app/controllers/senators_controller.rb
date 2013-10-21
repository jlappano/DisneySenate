class SenatorsController < ApplicationController

  def new
    # @senator = Senator.new
    render :new
  end

  def create
    Congress.key = 'df5394c089794f19ae950ce2aca1b096'
    @district = Congress.legislators_locate(params[:zipcode])
    @district_sen = @district["results"].select {|leg| leg["title"] == "Sen" && leg["state_rank"] == "senior"}
    @first_name = @district_sen[0]['first_name']
    @last_name = @district_sen[0]['last_name']
    @phone = @district_sen[0]['phone']
    @website = @district_sen[0]['website']
    @twitter_id = @district_sen[0]['twitter_id']

    @senator = Senator.create(first_name: @first_name, last_name: @last_name, phone: @phone, website: @website, twitter_id: @twitter_id)


    redirect_to senator_path(@senator)


  end

  def show

  end

end