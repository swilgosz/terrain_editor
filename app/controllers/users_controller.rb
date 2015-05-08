class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = params[:id].present? ? User.find(params[:id]) : current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:nickname, :organization)
    end
end
