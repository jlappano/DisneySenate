class SenatorsController < ApplicationController

  def index
    @senator = Senator.find_by(state: params[:search])
    render :index
  end



  def show
    @senator = Senator.find(params[:id])
    @disney_character_info = @senator.disney_character
    render :show
  end

  def disney
      @senator = Senator.find(params[:id])
      @disney_character_info = @senator.disney_character
      render :disney
  end

end


