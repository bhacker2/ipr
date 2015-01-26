class BusinessAreasController < ApplicationController

  def index
    @business_areas = BusinessArea.all.order("name")
  end
  
  def show
    @business_area = BusinessArea.find(params[:id]) 
  end
  
  def new
    @business_area = BusinessArea.new
  end

 def edit
   set_business_area 
 end
  
#  def update 
#   set_business_area 
# end
  
  def create
      @business_area = BusinessArea.new(params[:business_area].permit(:name, :director))

    respond_to do |format|
      if @business_area.save
        format.html { redirect_to @business_area, notice: 'Business Area was successfully created.' }
        format.json { render :show, status: :created, location: @business_area }
      else
        format.html { render :new }
        format.json { render json: @business_area.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      set_business_area

    respond_to do |format|
      if @business_area.update(params[:business_area].permit(:name, :director))
        format.html { redirect_to @business_area, notice: 'Business Area was successfully updated.' }
        format.json { render :show, status: :created, location: @business_area }
      else
        format.html { render :new }
        format.json { render json: @business_area.errors, status: :unprocessable_entity }
      end
    end
  end
    
  def destroy
    set_business_area
    @business_area.destroy
    respond_to do |format|
      format.html { redirect_to business_areas_url, notice: 'Business Area was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_business_area
      @business_area = BusinessArea.find(params[:id]) 
    end
end
