class JappsController < ApplicationController
  api :GET, '/japps'
  desc 'Test API'
  def index
    @japps = Japp.all
    render json: @japps
  end

  api :POST, '/japps'
  desc 'Test API'
  def apply

      @japp = Japp.new(title: "" , desc:"", status:"Unseen")
      if @japp.save
        render json: @japp, status: :created , location:@japp
      else
        render json: @japp.errors, status: :unprocessable_entity
      end


  end
  end





