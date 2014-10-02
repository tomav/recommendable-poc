class WelcomeController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    @programs = Program.all
    @liked    = current_user.liked_programs
    @disliked = current_user.disliked_programs
  end
end
