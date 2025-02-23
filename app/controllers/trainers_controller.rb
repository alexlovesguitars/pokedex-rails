class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokeballs = @trainer.pokeballs
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      redirect_to trainers_path, notice: "You created a trainer!"
    else
      puts @trainer.errors.full_messages
      render "trainers", status: :unprocessable_entity
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:name, :age, :photo)
  end
end
