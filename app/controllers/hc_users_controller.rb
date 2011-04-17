class HcUsersController < ApplicationController
  # GET /hc_users
  # GET /hc_users.xml
  def index
    @hc_users = HcUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hc_users }
    end
  end

  # GET /hc_users/1
  # GET /hc_users/1.xml
  def show
    @hc_user = HcUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hc_user }
    end
  end

  # GET /hc_users/new
  # GET /hc_users/new.xml
  def new
    @hc_user = HcUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hc_user }
    end
  end

  # GET /hc_users/1/edit
  def edit
    @hc_user = HcUser.find(params[:id])
  end

  # POST /hc_users
  # POST /hc_users.xml
  def create
    @hc_user = HcUser.new(params[:hc_user])

    respond_to do |format|
      if @hc_user.save
        format.html { redirect_to(@hc_user, :notice => 'Hc user was successfully created.') }
        format.xml  { render :xml => @hc_user, :status => :created, :location => @hc_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hc_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hc_users/1
  # PUT /hc_users/1.xml
  def update
    @hc_user = HcUser.find(params[:id])

    respond_to do |format|
      if @hc_user.update_attributes(params[:hc_user])
        format.html { redirect_to(@hc_user, :notice => 'Hc user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hc_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hc_users/1
  # DELETE /hc_users/1.xml
  def destroy
    @hc_user = HcUser.find(params[:id])
    @hc_user.destroy

    respond_to do |format|
      format.html { redirect_to(hc_users_url) }
      format.xml  { head :ok }
    end
  end
end
