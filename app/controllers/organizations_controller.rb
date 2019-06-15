# frozen_string_literal: true

# OrganizationsController class for Organization related actions
class OrganizationsController < ApplicationController
  def index
    @search = Organization.ransack(params[:q])
    @organizations = @search.result.paginate(page: params[:page], per_page: params[:per_page])
    @search.build_condition if @search.conditions.blank?
  end
end
