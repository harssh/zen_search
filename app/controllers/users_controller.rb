# frozen_string_literal: true

# UsersController class for User related actions
class UsersController < ApplicationController
  def index
    @search = User.ransack(params[:q])
    @users = @search.result.paginate(page: params[:page], per_page: params[:per_page])
    @search.build_condition if @search.conditions.blank?
  end
end
