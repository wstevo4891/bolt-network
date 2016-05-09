require 'rails_helper'

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

RSpec.describe GenresController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Genre. As you add validations to Genre, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { attributes_for(:genre) }

  let(:invalid_attributes) { attributes_for(:genre, :invalid) }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GenresController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all genres as @genres" do
      genre = Genre.create! valid_attributes
      get :index
      expect(assigns(:genres)).to eq([genre])
    end
  end

  describe "GET #show" do
    it "assigns the requested genre as @genre" do
      genre = Genre.create! valid_attributes
      get :show, {id: genre.to_param}
      expect(assigns(:genre)).to eq(genre)
    end
  end

=begin
  describe "GET #new" do
    it "assigns a new genre as @genre" do
      get :new
      expect(assigns(:genre)).to be_a_new(Genre)
    end
  end

  describe "GET #edit" do
    it "assigns the requested genre as @genre" do
      genre = Genre.create! valid_attributes
      get :edit, {id: genre.to_param}
      expect(assigns(:genre)).to eq(genre)
    end
  end
=end

  describe "POST #create" do
    context "with valid params" do
      let(:post_create) { post :create, genre: attributes_for(:genre) }

      it "creates a new Genre" do
        expect {
          post_create
        }.to change(Genre, :count).by(1)
      end

      it "assigns a newly created genre as @genre" do
        post_create
        expect(assigns(:genre)).to be_a(Genre)
        expect(assigns(:genre)).to be_persisted
      end
    end

=begin
    context "with invalid params" do
      it "renders an error message" do
        post :create, {genre: invalid_attributes}
        expect(page).to have_content('Name cannot be blank')
      end
    end
=end
  end

  describe "PUT #update" do
    before(:each) do
      @genre = create(:genre, valid_attributes)
    end

    context "with valid params" do
      let(:new_attributes) { attributes_for(:genre, name: "Mystery") }
      let (:put_update) { put :update, id: @genre, genre: new_attributes }

      it "updates the requested genre" do
        put_update
        @genre.reload
        expect(@genre.name).to eq("Mystery")
      end

      it "assigns the requested genre as @genre" do
        put_update
        expect(assigns(:genre)).to eq(@genre)
      end
    end

    context "with invalid params" do
      let(:put_invalid) { put :update, id: @genre, genre: attributes_for(:genre, :invalid) }

      it "assigns the genre as @genre" do
        put_invalid
        expect(assigns(:genre)).to eq(@genre)
      end

      it "does not change @genre's attributes" do
        put_invalid
        @genre.reload
        expect(@genre.name).to_not eq("Mystery")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested genre" do
      genre = Genre.create! valid_attributes
      expect {
        delete :destroy, {id: genre.to_param}
      }.to change(Genre, :count).by(-1)
    end
  end

end
