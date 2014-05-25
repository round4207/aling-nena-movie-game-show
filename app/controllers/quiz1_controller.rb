class Quiz1Controller < ApplicationController
  def index  	
  end

  def play
  	@questions = Question.all.sample(10)
  	@number = 0
  end

  def results
  	@array = params.values[2..-4]
  	@addscore = 0
  	if user_signed_in?  
  		@array.each do |x|
  			@addscore += x.to_i  				
  			current_user.score.cscore += x.to_i  
  			current_user.score.save!		
  		end
  	else
  		@array.each do |x|
  			@addscore += x.to_i
  		end  
  	end  	
  end
end
