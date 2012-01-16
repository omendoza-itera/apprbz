class DishesController < ApplicationController
  # GET /dishes
  # GET /dishes.json
  def index
   @company = Company.find(params[:company_id])
   @dishes = @company.dishes
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dishes }
    end
  end

  # GET /dishes/1
  # GET /dishes/1.json
  def show
    @dish = Dish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dish }
    end
  end

  # GET /dishes/new
  # GET /dishes/new.json
  def new
    @dish = Dish.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dish }
    end
  end

  # GET /dishes/1/edit
  def edit
    @dish = Dish.find(params[:id])
  end

  # POST /dishes
  # POST /dishes.json
  def create
    #@dish = Dish.new(params[:dish])
	@company = Company.find(params[:company_id])
    @dish = @company.dishes.create(params[:dish])
    #redirect_to post_path(@post)
    respond_to do |format|
      if @dish.save
        format.html { redirect_to @company, notice: 'El platillo se ha creado' }
        format.json { render json: @dish, status: :created, location: @dish }
      else
        #format.html { render action: "new" }
		format.html { redirect_to @company, notice: 'No se puede guardar el platillo' }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dishes/1
  # PUT /dishes/1.json
  def update
    @dish = Dish.find(params[:id])

    respond_to do |format|
      if @dish.update_attributes(params[:dish])
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish = Dish.find(params[:id])
    @dish.destroy

    respond_to do |format|
      format.html { redirect_to company_dishes_url }
      format.json { head :ok }
    end
  end
  
  
end
