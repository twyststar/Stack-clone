class UsersController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:show]

  def index
    @questions = Question.all
  end
  def show
    @question = Question.find(params[:id])
  end
  
end
