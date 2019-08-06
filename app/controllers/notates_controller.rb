class NotatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notate = Notate.all
  end

  def new
    @notate = Notate.new
  end

  def create
    @notate = Notate.new(notate_params)
    if @notate.save
      redirect_to root_path,
                  flash: { notice: 'Notate was successfully created.' }
    else
      redirect_to new_notate_path,
                  flash: { error: @notate.errors.full_messages.to_sentence }
    end 
  end

  private

  def notate_params
    params.require(:notate).permit!
  end
end
