class DigitalObjectsController < ApplicationController

  def search
    if (!params[:query].blank?)
      page = params[:page].present? ? params[:page] : 1;
      @nextpage = page.to_i + 1;
      @prevpage = page.to_i - 1;
      @query = params[:query]
      @collection = DigitalObject.search(@query, page)
      if (@collection)
        render 'users/my_objects'
      else
        flash[:alert] = "Your search returned no results."
        redirect_to my_objects_path
      end
    else
      flash[:alert] = "Please enter a search term."
        redirect_to my_objects_path
    end
  end

end