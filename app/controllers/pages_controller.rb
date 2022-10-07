# frozen_string_literal: false

class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = %w[gabriel gustavo mathias dimitri john ted]

    @members = @members.select { |member| member.start_with?(params[:member]) } if params[:member]
  end
end
