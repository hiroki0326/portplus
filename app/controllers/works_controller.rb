class WorksController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new, :edit, :update, :destroy]
  before_action :find_work, only: [:show, :edit, :update, :destroy]
  before_action :top_work, only: [:edit, :update, :destroy]


def index
end

def show
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

def edit

end

def update
  if @work.update(work_params)
    redirect_to work_path
  else
    render :edit
  end
end

def destroy
  if @work.destroy
    redirect_to user_path(current_user.id)
  end
end

  private

  def work_params
    params.require(:work).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end

  def find_work
    @work = Work.find(params[:id])
  end

  def top_work
    if current_user.id != @work.user_id 
    redirect_to root_path
    end
  end
end
