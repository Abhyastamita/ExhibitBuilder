class UserDigitalObjectsController < ApplicationController

  def create
    object = DigitalObject.check_db(params[:object_id])
    if object.blank?
      object = DigitalObject.get_new(params[:object_id])
      object.save
    end
    @user_digital_object = UserDigitalObject.create(user: current_user, digital_object: object)
    flash[:notice] = "#{!object.title.blank? ? object.title : "Object"} was successfully added to your collection."
    redirect_to my_objects_path
  end

end
