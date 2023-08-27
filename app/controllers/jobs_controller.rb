class JobsController < ApplicationController

  api :GET, '/jobs'
  desc 'index jobs'
  def index
    @jobs = Job.all
    render json: @jobs
  end

  api :GET, '/jobs'
  desc 'show jobs'
  def show
   @job = Job.find(params[:id])
   render json: @job
  end


  api :POST, '/jops'
  desc 'new job'
  def new
   job = Job.new
  render json: @job
  end

  api :POST, '/jops'
  desc 'create jobs'

  def create
   @job = Job.new(title: "" , desc:"", status:"Unseen")
   if @job.save
     render json: @job, status: :created
   else
     render json: @job.errors, status: :unprocessable_entity
   end
  end


  api :PUT, '/job'
  desc 'update job'

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

  api :DELETE, '/jop'
  desc 'destroy  jobs'

  def destroy
    @job = Job.find[:id]
    if @job.destroy
      render json: { message: 'Article deleted successfully' }, status: :ok
    else
      render json: { error: 'Failed to delete article' }, status: :unprocessable_entity
    end
  end
  end
