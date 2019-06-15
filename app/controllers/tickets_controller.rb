# frozen_string_literal: true

# TicketsController class for Ticket related actions
class TicketsController < ApplicationController
  def index
    @search = Ticket.ransack(params[:q])
    @tickets = @search.result.paginate(page: params[:page], per_page: params[:per_page])
    @search.build_condition if @search.conditions.blank?
  end
end
