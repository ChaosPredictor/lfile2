class SessionsController < ApplicationController
  def new
  end
	
	def create
		@user = User.find_by(email: params[:session][:email].downcase)
		if @user && @user.authenticate(params[:session][:password])
			flash[:success] = "Welcome Home!"
			log_in @user
			params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
			#same as
			#if params[:session][:remember_me] == '1'
			#	remember(user)
				#flash[:success] = "remember run!!!"
			#else
			#	forget(user)
				#flash[:success] = "forget run!!!"
			#end
			redirect_to @user
		else
			flash[:danger] = 'Invalid email/password combination' # Not quite right!			
			render 'new'
		end
	end
	
	def destroy
		log_out if logged_in?
		redirect_to root_url
	end
end
