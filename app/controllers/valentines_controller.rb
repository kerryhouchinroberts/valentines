class ValentinesController < ApplicationController

  def index
  end

  def new
    @valentine = Valentines.new
  end

  def create
    @valentine = Valentines.new(valentine_params)
    if @valentine.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @valentine = Valentines.find(params[:id])
  end

  private
  def valentine_params
    params.require(:valentine).permit(:verb_past_tense, :school_subject, :noun_one, :adjective_one, :color_one, :facial_feature, :name_of_song, :adjective_two, :noun_three, :holiday, :number, :noun_four, :color_two, :noun_five, :plural_noun, :sender_name, :ps)
  end

end
