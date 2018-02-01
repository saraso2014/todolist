class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end
  
    def create
      @project = Project.new(project_params)
      @project.save
      redirect_to projects_path, notice: 'Project was successfully created.'
    end

    def update
      @project = Project.find(params[:id])
      @project.update
      redirect_to projects_path, notice: 'Project was successfully updated.'
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      redirect_to projects_path, notice: 'Project was successfully deleted.'
    end
  
    private
      def project_params
        params.require(:project).permit(:name)
      end
end
