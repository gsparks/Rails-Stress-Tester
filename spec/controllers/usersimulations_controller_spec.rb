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

describe UsersimulationsController do

  # This should return the minimal set of attributes required to create a valid
  # Usersimulation. As you add validations to Usersimulation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all usersimulations as @usersimulations" do
      usersimulation = Usersimulation.create! valid_attributes
      get :index
      assigns(:usersimulations).should eq([usersimulation])
    end
  end

  describe "GET show" do
    it "assigns the requested usersimulation as @usersimulation" do
      usersimulation = Usersimulation.create! valid_attributes
      get :show, :id => usersimulation.id.to_s
      assigns(:usersimulation).should eq(usersimulation)
    end
  end

  describe "GET new" do
    it "assigns a new usersimulation as @usersimulation" do
      get :new
      assigns(:usersimulation).should be_a_new(Usersimulation)
    end
  end

  describe "GET edit" do
    it "assigns the requested usersimulation as @usersimulation" do
      usersimulation = Usersimulation.create! valid_attributes
      get :edit, :id => usersimulation.id.to_s
      assigns(:usersimulation).should eq(usersimulation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Usersimulation" do
        expect {
          post :create, :usersimulation => valid_attributes
        }.to change(Usersimulation, :count).by(1)
      end

      it "assigns a newly created usersimulation as @usersimulation" do
        post :create, :usersimulation => valid_attributes
        assigns(:usersimulation).should be_a(Usersimulation)
        assigns(:usersimulation).should be_persisted
      end

      it "redirects to the created usersimulation" do
        post :create, :usersimulation => valid_attributes
        response.should redirect_to(Usersimulation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved usersimulation as @usersimulation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Usersimulation.any_instance.stub(:save).and_return(false)
        post :create, :usersimulation => {}
        assigns(:usersimulation).should be_a_new(Usersimulation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Usersimulation.any_instance.stub(:save).and_return(false)
        post :create, :usersimulation => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested usersimulation" do
        usersimulation = Usersimulation.create! valid_attributes
        # Assuming there are no other usersimulations in the database, this
        # specifies that the Usersimulation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Usersimulation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => usersimulation.id, :usersimulation => {'these' => 'params'}
      end

      it "assigns the requested usersimulation as @usersimulation" do
        usersimulation = Usersimulation.create! valid_attributes
        put :update, :id => usersimulation.id, :usersimulation => valid_attributes
        assigns(:usersimulation).should eq(usersimulation)
      end

      it "redirects to the usersimulation" do
        usersimulation = Usersimulation.create! valid_attributes
        put :update, :id => usersimulation.id, :usersimulation => valid_attributes
        response.should redirect_to(usersimulation)
      end
    end

    describe "with invalid params" do
      it "assigns the usersimulation as @usersimulation" do
        usersimulation = Usersimulation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Usersimulation.any_instance.stub(:save).and_return(false)
        put :update, :id => usersimulation.id.to_s, :usersimulation => {}
        assigns(:usersimulation).should eq(usersimulation)
      end

      it "re-renders the 'edit' template" do
        usersimulation = Usersimulation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Usersimulation.any_instance.stub(:save).and_return(false)
        put :update, :id => usersimulation.id.to_s, :usersimulation => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested usersimulation" do
      usersimulation = Usersimulation.create! valid_attributes
      expect {
        delete :destroy, :id => usersimulation.id.to_s
      }.to change(Usersimulation, :count).by(-1)
    end

    it "redirects to the usersimulations list" do
      usersimulation = Usersimulation.create! valid_attributes
      delete :destroy, :id => usersimulation.id.to_s
      response.should redirect_to(usersimulations_url)
    end
  end

end
