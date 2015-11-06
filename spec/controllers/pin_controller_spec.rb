require 'rails_helper'


describe PinsController do
  describe "GET #index" do
    it "populates an array of pins" do
      # pin = create(:pin)
      # get :index
      # expect(assigns(:pins)).to match_array([pin])
    end
    it "renders the :index view" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested Pin to @pin"
    it "renders the :show template"
  end

  describe "GET #new" do
    it "assigns a new Pin to @pin"
    it "renders the :new template"
  end

  describe "GET #edit" do
    it "assigns a Pin to @pin"
    it "renders the :edit template"
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new pin in the database"
      it "redirects to the home page"
    end

    context "with invalid attributes" do
      it "does not save the new pin in the database"
      it "re-renders the :new template"
    end
  end
end
