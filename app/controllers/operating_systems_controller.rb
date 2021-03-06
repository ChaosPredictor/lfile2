class OperatingSystemsController < ApplicationController
  before_action :logged_in_user,   only: [:index, :show, :new, :create, :edit, :update, :destroy]
  before_action :admin_user,       only: [        :show, :new, :create, :edit, :update, :destroy]
	
	
	def show
		@operating_system = OperatingSystem.find(params[:id])
	end
	
	def index
		@operating_systems = OperatingSystem.paginate(page: params[:page])
	end	
	
	def new
		@operating_system = OperatingSystem.new
  end
	
	def create
		@operating_system = OperatingSystem.new(operating_system_params)
		if @operating_system.save
			redirect_to operating_systems_path
			flash[:success] = "New Operating System/Version added to list!"
		else
			#flash[:error] = "There is a problem"						
			render 'new'
		end
	end
	
	def edit
		@operating_system = OperatingSystem.find(params[:id])
	end
	
	def update
		@operating_system = OperatingSystem.find(params[:id])
		if @operating_system.update_attributes(operating_system_params)
			flash[:success] = "Operating System Editted!"
			redirect_to operating_systems_path
			#flash[:error] = "You know what you're doing!"			
		else
			flash[:error] = "There is a problem"
			render 'edit'
		end
	end
	
	def destroy
		if OperatingSystem.find(params[:id]).destroy
			flash[:success] = "Operating System Deleted from the list!"
			redirect_to operating_systems_path
		else
			redirect_to root_path
		end
	end
	
	private
	
		def operating_system_params
			params.require(:operating_system).permit(:name, :version)
		end
end
