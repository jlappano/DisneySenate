class SenatorsController < ApplicationController

  def index
    redirect_to search_senators_path
    # @senator = Senator.new
    # render :index
  end

  def search
    @senator = Senator.find_by(state: params[:state])
    
    if @senator.nil?
      render :index
    else
      redirect_to senator_path(@senator)
    end

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


