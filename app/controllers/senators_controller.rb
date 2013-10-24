class SenatorsController < ApplicationController

  def new
    render :new
  end


  end

  def show
    # @senator = Senator.find(params[:id])
    render :show
  end

end