class SenatorsController < ApplicationController

  def new
    # @senator = Senator.new
    render :new
  end

  def create
    @district = Congress.legistators_locate(params[:zipcode])
    district_sen = @district["results"].select {|leg| leg["title"] == "Sen" && leg["state_rank"] == "senior"}
  end

  def show
  end

end