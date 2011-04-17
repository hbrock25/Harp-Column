class UserPiecesController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index, :show]
  # GET /user_pieces
  # GET /user_pieces.xml
  def index
    @user_pieces = UserPiece.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_pieces }
    end
  end

  # GET /user_pieces/1
  # GET /user_pieces/1.xml
  def show
    @user_piece = UserPiece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_piece }
    end
  end

  # GET /user_pieces/new
  # GET /user_pieces/new.xml
  def new
    @user_piece = UserPiece.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_piece }
    end
  end

  # GET /user_pieces/1/edit
  def edit
    @user_piece = UserPiece.find(params[:id])
  end

  # POST /user_pieces
  # POST /user_pieces.xml
  def create
    @user_piece = UserPiece.new(params[:user_piece])
    @user_piece.hc_user = current_user

    respond_to do |format|
      if @user_piece.save
        format.html { redirect_to(@user_piece, :notice => 'User piece was successfully created.') }
        format.xml  { render :xml => @user_piece, :status => :created, :location => @user_piece }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_piece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_pieces/1
  # PUT /user_pieces/1.xml
  def update
    @user_piece = UserPiece.find(params[:id])

    respond_to do |format|
      if @user_piece.update_attributes(params[:user_piece])
        format.html { redirect_to(@user_piece, :notice => 'User piece was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_piece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_pieces/1
  # DELETE /user_pieces/1.xml
  def destroy
    @user_piece = UserPiece.find(params[:id])
    @user_piece.destroy

    respond_to do |format|
      format.html { redirect_to(user_pieces_url) }
      format.xml  { head :ok }
    end
  end
end
