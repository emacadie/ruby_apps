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

describe WpOptionsController do

  # This should return the minimal set of attributes required to create a valid
  # WpOption. As you add validations to WpOption, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "option_id" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WpOptionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all wp_options as @wp_options" do
      wp_option = WpOption.create! valid_attributes
      get :index, {}, valid_session
      assigns(:wp_options).should eq([wp_option])
    end
  end

  describe "GET show" do
    it "assigns the requested wp_option as @wp_option" do
      wp_option = WpOption.create! valid_attributes
      get :show, {:id => wp_option.to_param}, valid_session
      assigns(:wp_option).should eq(wp_option)
    end
  end

  describe "GET new" do
    it "assigns a new wp_option as @wp_option" do
      get :new, {}, valid_session
      assigns(:wp_option).should be_a_new(WpOption)
    end
  end

  describe "GET edit" do
    it "assigns the requested wp_option as @wp_option" do
      wp_option = WpOption.create! valid_attributes
      get :edit, {:id => wp_option.to_param}, valid_session
      assigns(:wp_option).should eq(wp_option)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WpOption" do
        expect {
          post :create, {:wp_option => valid_attributes}, valid_session
        }.to change(WpOption, :count).by(1)
      end

      it "assigns a newly created wp_option as @wp_option" do
        post :create, {:wp_option => valid_attributes}, valid_session
        assigns(:wp_option).should be_a(WpOption)
        assigns(:wp_option).should be_persisted
      end

      it "redirects to the created wp_option" do
        post :create, {:wp_option => valid_attributes}, valid_session
        response.should redirect_to(WpOption.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved wp_option as @wp_option" do
        # Trigger the behavior that occurs when invalid params are submitted
        WpOption.any_instance.stub(:save).and_return(false)
        post :create, {:wp_option => { "option_id" => "invalid value" }}, valid_session
        assigns(:wp_option).should be_a_new(WpOption)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WpOption.any_instance.stub(:save).and_return(false)
        post :create, {:wp_option => { "option_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested wp_option" do
        wp_option = WpOption.create! valid_attributes
        # Assuming there are no other wp_options in the database, this
        # specifies that the WpOption created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WpOption.any_instance.should_receive(:update_attributes).with({ "option_id" => "1" })
        put :update, {:id => wp_option.to_param, :wp_option => { "option_id" => "1" }}, valid_session
      end

      it "assigns the requested wp_option as @wp_option" do
        wp_option = WpOption.create! valid_attributes
        put :update, {:id => wp_option.to_param, :wp_option => valid_attributes}, valid_session
        assigns(:wp_option).should eq(wp_option)
      end

      it "redirects to the wp_option" do
        wp_option = WpOption.create! valid_attributes
        put :update, {:id => wp_option.to_param, :wp_option => valid_attributes}, valid_session
        response.should redirect_to(wp_option)
      end
    end

    describe "with invalid params" do
      it "assigns the wp_option as @wp_option" do
        wp_option = WpOption.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WpOption.any_instance.stub(:save).and_return(false)
        put :update, {:id => wp_option.to_param, :wp_option => { "option_id" => "invalid value" }}, valid_session
        assigns(:wp_option).should eq(wp_option)
      end

      it "re-renders the 'edit' template" do
        wp_option = WpOption.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WpOption.any_instance.stub(:save).and_return(false)
        put :update, {:id => wp_option.to_param, :wp_option => { "option_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested wp_option" do
      wp_option = WpOption.create! valid_attributes
      expect {
        delete :destroy, {:id => wp_option.to_param}, valid_session
      }.to change(WpOption, :count).by(-1)
    end

    it "redirects to the wp_options list" do
      wp_option = WpOption.create! valid_attributes
      delete :destroy, {:id => wp_option.to_param}, valid_session
      response.should redirect_to(wp_options_url)
    end
  end

end
