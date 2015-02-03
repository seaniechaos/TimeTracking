class EntriesController < ApplicationController
  def index
    @project = Project.find params[:project_id]
    @entries = @project.entries
  end

  def show
    @entry = Entry.find(params[:id])
  end
end
