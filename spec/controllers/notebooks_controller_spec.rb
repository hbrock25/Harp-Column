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

describe NotebooksController do

  # This should return the minimal set of attributes required to create a valid
  # Notebook. As you add validations to Notebook, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all notebooks as @notebooks" do
      notebook = Notebook.create! valid_attributes
      get :index
      assigns(:notebooks).should eq([notebook])
    end
  end

  describe "GET show" do
    it "assigns the requested notebook as @notebook" do
      notebook = Notebook.create! valid_attributes
      get :show, :id => notebook.id.to_s
      assigns(:notebook).should eq(notebook)
    end
  end

  describe "GET new" do
    it "assigns a new notebook as @notebook" do
      get :new
      assigns(:notebook).should be_a_new(Notebook)
    end
  end

  describe "GET edit" do
    it "assigns the requested notebook as @notebook" do
      notebook = Notebook.create! valid_attributes
      get :edit, :id => notebook.id.to_s
      assigns(:notebook).should eq(notebook)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Notebook" do
        expect {
          post :create, :notebook => valid_attributes
        }.to change(Notebook, :count).by(1)
      end

      it "assigns a newly created notebook as @notebook" do
        post :create, :notebook => valid_attributes
        assigns(:notebook).should be_a(Notebook)
        assigns(:notebook).should be_persisted
      end

      it "redirects to the created notebook" do
        post :create, :notebook => valid_attributes
        response.should redirect_to(Notebook.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved notebook as @notebook" do
        # Trigger the behavior that occurs when invalid params are submitted
        Notebook.any_instance.stub(:save).and_return(false)
        post :create, :notebook => {}
        assigns(:notebook).should be_a_new(Notebook)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Notebook.any_instance.stub(:save).and_return(false)
        post :create, :notebook => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested notebook" do
        notebook = Notebook.create! valid_attributes
        # Assuming there are no other notebooks in the database, this
        # specifies that the Notebook created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Notebook.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => notebook.id, :notebook => {'these' => 'params'}
      end

      it "assigns the requested notebook as @notebook" do
        notebook = Notebook.create! valid_attributes
        put :update, :id => notebook.id, :notebook => valid_attributes
        assigns(:notebook).should eq(notebook)
      end

      it "redirects to the notebook" do
        notebook = Notebook.create! valid_attributes
        put :update, :id => notebook.id, :notebook => valid_attributes
        response.should redirect_to(notebook)
      end
    end

    describe "with invalid params" do
      it "assigns the notebook as @notebook" do
        notebook = Notebook.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Notebook.any_instance.stub(:save).and_return(false)
        put :update, :id => notebook.id.to_s, :notebook => {}
        assigns(:notebook).should eq(notebook)
      end

      it "re-renders the 'edit' template" do
        notebook = Notebook.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Notebook.any_instance.stub(:save).and_return(false)
        put :update, :id => notebook.id.to_s, :notebook => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested notebook" do
      notebook = Notebook.create! valid_attributes
      expect {
        delete :destroy, :id => notebook.id.to_s
      }.to change(Notebook, :count).by(-1)
    end

    it "redirects to the notebooks list" do
      notebook = Notebook.create! valid_attributes
      delete :destroy, :id => notebook.id.to_s
      response.should redirect_to(notebooks_url)
    end
  end

end