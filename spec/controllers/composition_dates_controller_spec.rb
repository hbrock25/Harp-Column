require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CompositionDatesController do

  # This should return the minimal set of attributes required to create a valid
  # CompositionDate. As you add validations to CompositionDate, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all composition_dates as @composition_dates" do
      composition_date = CompositionDate.create! valid_attributes
      get :index
      assigns(:composition_dates).should eq([composition_date])
    end
  end

  describe "GET show" do
    it "assigns the requested composition_date as @composition_date" do
      composition_date = CompositionDate.create! valid_attributes
      get :show, :id => composition_date.id.to_s
      assigns(:composition_date).should eq(composition_date)
    end
  end

  describe "GET new" do
    it "assigns a new composition_date as @composition_date" do
      get :new
      assigns(:composition_date).should be_a_new(CompositionDate)
    end
  end

  describe "GET edit" do
    it "assigns the requested composition_date as @composition_date" do
      composition_date = CompositionDate.create! valid_attributes
      get :edit, :id => composition_date.id.to_s
      assigns(:composition_date).should eq(composition_date)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CompositionDate" do
        expect {
          post :create, :composition_date => valid_attributes
        }.to change(CompositionDate, :count).by(1)
      end

      it "assigns a newly created composition_date as @composition_date" do
        post :create, :composition_date => valid_attributes
        assigns(:composition_date).should be_a(CompositionDate)
        assigns(:composition_date).should be_persisted
      end

      it "redirects to the created composition_date" do
        post :create, :composition_date => valid_attributes
        response.should redirect_to(CompositionDate.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved composition_date as @composition_date" do
        # Trigger the behavior that occurs when invalid params are submitted
        CompositionDate.any_instance.stub(:save).and_return(false)
        post :create, :composition_date => {}
        assigns(:composition_date).should be_a_new(CompositionDate)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CompositionDate.any_instance.stub(:save).and_return(false)
        post :create, :composition_date => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested composition_date" do
        composition_date = CompositionDate.create! valid_attributes
        # Assuming there are no other composition_dates in the database, this
        # specifies that the CompositionDate created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CompositionDate.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => composition_date.id, :composition_date => {'these' => 'params'}
      end

      it "assigns the requested composition_date as @composition_date" do
        composition_date = CompositionDate.create! valid_attributes
        put :update, :id => composition_date.id, :composition_date => valid_attributes
        assigns(:composition_date).should eq(composition_date)
      end

      it "redirects to the composition_date" do
        composition_date = CompositionDate.create! valid_attributes
        put :update, :id => composition_date.id, :composition_date => valid_attributes
        response.should redirect_to(composition_date)
      end
    end

    describe "with invalid params" do
      it "assigns the composition_date as @composition_date" do
        composition_date = CompositionDate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CompositionDate.any_instance.stub(:save).and_return(false)
        put :update, :id => composition_date.id.to_s, :composition_date => {}
        assigns(:composition_date).should eq(composition_date)
      end

      it "re-renders the 'edit' template" do
        composition_date = CompositionDate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CompositionDate.any_instance.stub(:save).and_return(false)
        put :update, :id => composition_date.id.to_s, :composition_date => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested composition_date" do
      composition_date = CompositionDate.create! valid_attributes
      expect {
        delete :destroy, :id => composition_date.id.to_s
      }.to change(CompositionDate, :count).by(-1)
    end

    it "redirects to the composition_dates list" do
      composition_date = CompositionDate.create! valid_attributes
      delete :destroy, :id => composition_date.id.to_s
      response.should redirect_to(composition_dates_url)
    end
  end

end
