class Api::UsersController < Api::BaseController
  def show
    @user = current_user
    return if @user.present?

    render_errors("Invalid Token")
  end

  def create
    @user = User.new(user_params)

    return if @user.save
    render_errors(@user.errors.full_messages)
  end

   def sign_in
    @user = User.find_by(email: user_params[:email])
    return if @user&.authenticate(user_params[:password])

    render_errors("Invalid email or password")
   end

   def sign_out
    if current_user.present?
      current_user.update(auth_token: nil)
    else
      render_errors("User not signed in")
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
