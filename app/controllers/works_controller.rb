class WorksController < ApplicationController
def index
end

def show
  @work = Work.find(params[:id])
end

def new
  @work = Work.new
end


def create
  @work = Work.new(work_params)
  if @work.save
    redirect_to user_path(current_user.id)
  else
    render :new
  end
end

  private

  def work_params
    params.require(:work).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
