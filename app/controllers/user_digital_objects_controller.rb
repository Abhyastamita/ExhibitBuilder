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

  def destroy
    object = DigitalObject.find(params[:id])
    user_digital_object = UserDigitalObject.where(user_id: current_user.id, digital_object_id: object).first
    user_digital_object.destroy
    flash[:notice] = "#{object.title} was successfully removed from your portfolio."
    redirect_to my_objects_path
  end

  def update
    object = DigitalObject.check_db(params[:object_id])
    updated = DigitalObject.get_new(params[:object_id])
    object.update(object: updated.object, description: updated.description, title: updated.title, creator: updated.creator, dataProvider: updated.dataProvider, sourceLink: updated.sourceLink, format: updated.format )
    flash[:notice] = "#{!object.title.blank? ? object.title : "Object"} was successfully updated to match changes to the DPLA record."
    redirect_to my_objects_path
  end

end
