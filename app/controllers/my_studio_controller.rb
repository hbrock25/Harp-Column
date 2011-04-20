class MyStudioController < ApplicationController
  # User should always be authenticated to see this page

  # GET /my_studio/index.html
  # GET /my_studio/index.xml
  def index
    @user = current_user
    @performances = @user.performances
    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
