class DigitalObjectsController < ApplicationController

  def search
    if (!params[:query].blank?)
      @collection = DigitalObject.search(params[:query])
      if (@collection)
        # respond_to do |format|
        #   format.js {render partial: 'users/result'}
        # end
        render json: @collection
      else
        flash[:alert] = "Your search query returned no results."
        # respond_to do |format|
        #   flash.now[:alert] = "Please enter a valid symbol to search"
        #   format.js {render partial: 'users/result'}
        # end
      end
    else
      flash.now[:alert] = "Please enter a term to search for."
      # respond_to do |format|
      #   flash.now[:alert] = "Please enter a symbol to search"
      #   format.js {render partial: 'users/result'}
      # end
    end
  end

end