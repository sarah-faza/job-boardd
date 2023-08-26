class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render json: @jobs
  end
  def show
   @job = Job.find(params[:id])
   render json: @job
  end

  def new
   job = Job.new
  render json: @job
   end

  def create
   @job = Job.new(title: "" , desc:"", status:"Unseen")
   if @job.save
     render json: @job, status: :created
   else
     render json: @job.errors, status: :unprocessable_entity
   end
  end


  def update
    @article = Job.find(params[:id])

    if @article.update(job_params)
      render json: @job, status: :ok
    else
      render json: @job.errors, status: :unprocessable_entity
  end

  end

  private

  def job_params
    params.permit(:title, :desc)
  end

  def destroy
    @job = Job.find[:id]
    if @job.destroy
      render json: { message: 'Article deleted successfully' }, status: :ok
    else
      render json: { error: 'Failed to delete article' }, status: :unprocessable_entity
    end
  end
  end
