class ProjectsController < ApplicationController
  before_action :authenticate_user!
  
    def index
      @projects = Project.where(:user_id => current_user.id)
    end
  
    def create
      @project = Project.new(project_params)
      @project.save
      redirect_to projects_path, notice: 'Project was successfully created.'
    end

    def edit
      @project = Project.find(params[:id])
      respond_to do |format|
        format.js
      end
    end

    def update
      @project = Project.find(params[:id])
      @project.update(project_params)
      redirect_to projects_path, notice: 'Project was successfully updated.'
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      redirect_to projects_path, notice: 'Project was successfully deleted.'
    end
  
    private
      def project_params
        params.require(:project).permit(:name, :user_id)
      end
end
