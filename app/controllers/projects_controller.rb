class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to project_path(@project)
		else
			render :new
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update(project_params)
			redirect_to project_path(@project)
		else 
			render :edit
		end
	end

	def destroy
		@project = Project.find(params[:id])

		@project.destroy

		redirect_to projects_path
	end

private
	def project_params
		params.require(:project).permit(:name, :description, :target_area, :num_members)
	end
end 