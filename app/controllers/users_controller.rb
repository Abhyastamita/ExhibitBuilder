class UsersController < ApplicationController
  def my_objects
    @saved_collection = current_user.digital_objects
  end
end