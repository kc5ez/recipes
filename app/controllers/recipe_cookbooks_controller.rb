class RecipeCookbooksController < ApplicationController
  before_action :set_recipe_cookbook, only: [:show, :edit, :update, :destroy]

  # GET /recipe_cookbooks
  # GET /recipe_cookbooks.json
  def index
    if params[:search]
      @recipe_cookbooks = RecipeCookbook.where('name LIKE ?', "%#{params[:search]}%")
    else
      @recipe_cookbooks = RecipeCookbook.all
    end
  end

  # GET /recipe_cookbooks/1
  # GET /recipe_cookbooks/1.json
  def show
   @recipe_cookbook = RecipeCookbook.find(params[:id])
   @recipe_ingredients = RecipeCookbook.find(params[:id]).recipe_ingredients
   @recipe_instructions = RecipeCookbook.find(params[:id]).recipe_steps
   @ingredients = RecipeCookbook.find(params[:id]).ingredients
  end

  # GET /recipe_cookbooks/new
  def new
    @recipe_cookbook = RecipeCookbook.new
  end

  # GET /recipe_cookbooks/1/edit
  def edit
  end

  # POST /recipe_cookbooks
  # POST /recipe_cookbooks.json
  def create
    @recipe_cookbook = RecipeCookbook.new(recipe_cookbook_params)

    respond_to do |format|
      if @recipe_cookbook.save
        format.html { redirect_to @recipe_cookbook, notice: 'Recipe cookbook was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_cookbook }
      else
        format.html { render :new }
        format.json { render json: @recipe_cookbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_cookbooks/1
  # PATCH/PUT /recipe_cookbooks/1.json
  def update
    respond_to do |format|
      if @recipe_cookbook.update(recipe_cookbook_params)
        format.html { redirect_to @recipe_cookbook, notice: 'Recipe cookbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_cookbook }
      else
        format.html { render :edit }
        format.json { render json: @recipe_cookbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_cookbooks/1
  # DELETE /recipe_cookbooks/1.json
  def destroy
    @recipe_cookbook.destroy
    respond_to do |format|
      format.html { redirect_to recipe_cookbooks_url, notice: 'Recipe cookbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_cookbook
      @recipe_cookbook = RecipeCookbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_cookbook_params
      params.require(:recipe_cookbook).permit(:calories, :blurb, :category, :time, :difficulty, :name, :search)
    end
end
