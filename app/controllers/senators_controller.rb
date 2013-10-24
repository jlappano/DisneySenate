class SenatorsController < ApplicationController

  def index
    @senator = Senator.find_by(state: params[:search])
    render :index
  end



  def show
    @senator = Senator.find(params[:id])
    render :show
  end

end
