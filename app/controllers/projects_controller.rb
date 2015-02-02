class ProjectsController < ApplicationController
  def index
    @projects = Project.last_created_projects(10)
  end

  def show
    begin
      @project =  Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render 'no_project_found'
    end
  end
end
