class InitiativesController < ApplicationController

  def index
    @initiatives = Initiative.all
  end
  
  def show
    @initiative = Initiative.find(params[:id]) 
  end
  
  def new
    @initiative = Initiative.new
  end

 def edit
    set_initiative
 end
  
 	def update
    set_initiative

		if @initiative.update(params[:initiative].permit(:name, :priority, :business_area_id))
      flash[:notice] = 'Initiative Updated'
			redirect_to @initiative
		else
			render 'edit'
		end
	end

  def destroy
    set_initiative
    @initiative.destroy
    respond_to do |format|
      format.html { redirect_to initiatives_url, notice: 'Initiative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def create
    @initiative = Initiative.new(params[:initiative].permit(:name, :priority, :business_area_id))

    respond_to do |format|
      if @initiative.save
        format.html { redirect_to @initiative, notice: 'Initiative was successfully created.' }
        format.json { render :show, status: :created, location: @initiative }
      else
        format.html { render :new }
        format.json { render json: @initiative.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def set_initiative
      @initiative = Initiative.find(params[:id]) 
  end
end