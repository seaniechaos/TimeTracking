class ProjectsController < ApplicationController
  def index
    @projects = Project.last_created_projects(10)
    if @projects.empty?
      render 'no_projects'
    end
  end

  def show
    begin
      @project =  Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render 'no_project_found'
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    if @project.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
