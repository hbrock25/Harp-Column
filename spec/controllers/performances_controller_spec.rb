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

describe PerformancesController do

  # This should return the minimal set of attributes required to create a valid
  # Performance. As you add validations to Performance, be sure to
  # update the return value of this method accordingly.
  before :each do
    @performance = FactoryGirl.build(:performance)
  end

  describe "GET index" do
    it "assigns all performances as @performances" do
      get :index
      assigns(:performances).should eq([@performance])
    end
  end

  describe "GET show" do
    it "assigns the requested performance as @performance" do
      get :show, :id => @performance.id.to_s
      assigns(:performance).should eq(@performance)
    end
  end

  describe "GET new" do
    it "assigns a new performance as @performance" do
      get :new
      assigns(:performance).should be_a_new(Performance)
    end
  end

  describe "GET edit" do
    it "assigns the requested performance as @performance" do
      get :edit, :id => @performance.id.to_s
      assigns(:performance).should eq(@performance)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Performance" do
        expect {
        }.to change(Performance, :count).by(1)
      end

      it "assigns a newly created performance as @performance" do
        assigns(:performance).should be_a(Performance)
        assigns(:performance).should be_persisted
      end

      it "redirects to the created performance" do
        response.should redirect_to(Performance.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved performance as @performance" do
        # Trigger the behavior that occurs when invalid params are submitted
        Performance.any_instance.stub(:save).and_return(false)
        post :create, :performance => {}
        assigns(:performance).should be_a_new(Performance)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Performance.any_instance.stub(:save).and_return(false)
        post :create, :performance => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested performance" do
        # Assuming there are no other performances in the database, this
        # specifies that the Performance created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Performance.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => @performance.id, :performance => {'these' => 'params'}
      end

      it "assigns the requested performance as @performance" do
        put :update, :id => @performance.id, :performance => @performance.attributes
        assigns(:performance).should eq(@performance)
      end

      it "redirects to the performance" do
        put :update, :id => @performance.id, :performance => @performance.attributes
        response.should redirect_to(@performance)
      end
    end

    describe "with invalid params" do
      it "assigns the performance as @performance" do
        # Trigger the behavior that occurs when invalid params are submitted
        Performance.any_instance.stub(:save).and_return(false)
        put :update, :id => @performance.id.to_s, :performance => {}
        assigns(:performance).should eq(@performance)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Performance.any_instance.stub(:save).and_return(false)
        put :update, :id => @performance.id.to_s, :performance => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested performance" do
      expect {
        delete :destroy, :id => @performance.id.to_s
      }.to change(Performance, :count).by(-1)
    end

    it "redirects to the performances list" do
      delete :destroy, :id => @performance.id.to_s
      response.should redirect_to(performances_url)
    end
  end

end
