class TasksController < ApplicationController  
    def create
      @project = Project.find(params[:project_id])
      @task = @project.tasks.create(task_params)
      redirect_to projects_path
    end

    def update
      @project = Project.find(params[:project_id])
      @task = @project.tasks.find(params[:id])
      @task.update(task_params)
      redirect_to projects_path
    end

    def destroy
      @project = Project.find(params[:project_id])
      @task = @project.tasks.find(params[:id])
      @task.destroy
      redirect_to projects_path
    end

    def priority
      @project = Project.find(params[:project_id])
      @task = @project.tasks.find(params[:id])
      @task.priority!
      redirect_to projects_path
    end

    def complete
      @project = Project.find(params[:project_id])
      @task = @project.tasks.find(params[:id])
      @task.complete!
      redirect_to projects_path
    end
  
    private
      def task_params
        params.require(:task).permit(:name, :project_id, :id, :priority)
      end
end
