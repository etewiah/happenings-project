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

describe Api::V1::FlatHappeningsController do

  # This should return the minimal set of attributes required to create a valid
  # FlatHappening. As you add validations to FlatHappening, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  
      name: "testicles"
    } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Api::V1::FlatHappeningsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all flat_happenings as @flat_happenings" do
      flat_happening = FlatHappening.create! valid_attributes
      get :index, {}, valid_session
      assigns(:flat_happenings).should eq([flat_happening])
    end
  end

  describe "GET show" do
    it "assigns the requested api_v1 as @api_v1" do
      flat_happening = FlatHappening.create! valid_attributes
      get :show, {:id => flat_happening.to_param}, valid_session
      assigns(:flat_happening).should eq(flat_happening)
    end
  end

  # describe "GET new" do
  #   it "assigns a new api_v1 as @api_v1" do
  #     get :new, {}, valid_session
  #     assigns(:flat_happening).should be_a_new(FlatHappening)
  #   end
  # end

  # describe "GET edit" do
  #   it "assigns the requested api_v1 as @api_v1" do
  #     flat_happening = FlatHappening.create! valid_attributes
  #     get :edit, {:id => flat_happening.to_param}, valid_session
  #     assigns(:flat_happening).should eq(flat_happening)
  #   end
  # end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FlatHappening" do
        expect {
          post :create, {:flat_happening => valid_attributes}, valid_session
        }.to change(FlatHappening, :count).by(1)
      end

      it "assigns a newly created api_v1 as @api_v1" do
        post :create, {:flat_happening => valid_attributes}, valid_session
        assigns(:flat_happening).should be_a(FlatHappening)
        assigns(:flat_happening).should be_persisted
      end

      # it "redirects to the created api_v1" do
      #   post :create, {:flat_happening => valid_attributes}, valid_session
      #   response.should redirect_to(FlatHappening.last)
      # end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved api_v1 as @api_v1" do
        # Trigger the behavior that occurs when invalid params are submitted
        FlatHappening.any_instance.stub(:save).and_return(false)
        post :create, {:flat_happening => {  }}, valid_session
        assigns(:flat_happening).should be_a_new(FlatHappening)
      end
    end
  end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested api_v1" do
  #       flat_happening = FlatHappening.create! valid_attributes
  #       # Assuming there are no other api_v1_flat_happenings in the database, this
  #       # specifies that the FlatHappening created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       FlatHappening.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
  #       put :update, {:id => flat_happening.to_param, :api_v1 => { "these" => "params" }}, valid_session
  #     end

  #     it "assigns the requested api_v1 as @api_v1" do
  #       flat_happening = FlatHappening.create! valid_attributes
  #       put :update, {:id => flat_happening.to_param, :api_v1 => valid_attributes}, valid_session
  #       assigns(:api_v1).should eq(flat_happening)
  #     end

  #     it "redirects to the api_v1" do
  #       flat_happening = FlatHappening.create! valid_attributes
  #       put :update, {:id => flat_happening.to_param, :api_v1 => valid_attributes}, valid_session
  #       response.should redirect_to(flat_happening)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the api_v1 as @api_v1" do
  #       flat_happening = FlatHappening.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       FlatHappening.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => flat_happening.to_param, :api_v1 => {  }}, valid_session
  #       assigns(:api_v1).should eq(flat_happening)
  #     end

  #   end
  # end

  # describe "DELETE destroy" do
  #   it "destroys the requested api_v1" do
  #     flat_happening = FlatHappening.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => flat_happening.to_param}, valid_session
  #     }.to change(FlatHappening, :count).by(-1)
  #   end

  #   it "redirects to the api_v1_flat_happenings list" do
  #     flat_happening = FlatHappening.create! valid_attributes
  #     delete :destroy, {:id => flat_happening.to_param}, valid_session
  #     response.should redirect_to(api_v1_flat_happenings_url)
  #   end
  # end

end