class ImpactedApplicationsController < ApplicationController

  def index
    @impacted_applications = ImpactedApplication.all
  end
  
  def show
    @impacted_application = ImpactedApplication.find(params[:id]) 
  end
  
  def new
    @impacted_application = ImpactedApplication.new
  end

 def edit
    set_impacted_application
 end
  
 	def update
    set_impacted_application

		if @impacted_application.update(params[:impacted_application].permit(:name, :priority, :business_area_id))
      flash[:notice] = 'Impacted Application Updated'
			redirect_to @impacted_application
		else
			render 'edit'
		end
	end

  def destroy
    set_impacted_application
    @impacted_application.destroy
    respond_to do |format|
      format.html { redirect_to impacted_applications_url, notice: 'Impacted Application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def create
    @impacted_application = ImpactedApplication.new(params[:impacted_application].permit(:project_id, :application_id))

    respond_to do |format|
      if @impacted_application.save
        format.html { redirect_to @impacted_application, notice: 'Impacted Application was successfully created.' }
        format.json { render :show, status: :created, location: @impacted_application }
      else
        format.html { render :new }
        format.json { render json: @impacted_application.errors, status: :unprocessable_entity }
      end
    end
  end

  
private
  def set_impacted_application
      @impacted_application = ImpactedApplication.find(params[:id]) 
  end
end
