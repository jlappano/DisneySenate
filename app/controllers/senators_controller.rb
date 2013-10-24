class SenatorsController < ApplicationController

  def index
    @senator = Senator.where(state: params[:search])
    binding.pry
    render :index
  end



  # def show
  #   @senator = Senator.find(params[:id])
  #   render :show
  # end

end
