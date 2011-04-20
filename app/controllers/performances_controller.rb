class PerformancesController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index, :show]
  # GET /performances
  # GET /performances.xml
  def index
    @performances = Performance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @performances }
    end
  end

  # GET /performances/1
  # GET /performances/1.xml
  def show
    @performance = Performance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @performance }
    end
  end

  # GET /performances/new
  # GET /performances/new.xml
  def new
    @performance = Performance.new
    @user_pieces = current_user.user_pieces
    @venues = Venue.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @performance }
    end
  end

  # GET /performances/1/edit
  def edit
    @performance = Performance.find(params[:id])
    @user_pieces = current_user.user_pieces
  end

  # POST /performances
  # POST /performances.xml
  def create
    @performance = Performance.new(params[:performance])
    @performance.hc_user = current_user

    respond_to do |format|
      if @performance.save
        format.html { redirect_to(@performance, :notice => 'Performance was successfully created.') }
        format.xml  { render :xml => @performance, :status => :created, :location => @performance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @performance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /performances/1
  # PUT /performances/1.xml
  def update
    @performance = Performance.find(params[:id])

    respond_to do |format|
      if @performance.update_attributes(params[:performance])
        format.html { redirect_to(@performance, :notice => 'Performance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @performance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /performances/1
  # DELETE /performances/1.xml
  def destroy
    @performance = Performance.find(params[:id])
    @performance.destroy

    respond_to do |format|
      format.html { redirect_to(performances_url) }
      format.xml  { head :ok }
    end
  end

end
