class ObjectivesController < ApplicationController
  skip_before_action :authenticate_user!


  def index
  end

  def show
    # @mamm = DailyMeeting.find(params[:id])

    # @physique = @mamm.energy_p
    # @emotionnel = @mamm.energy_e
    # @intellectuel = @mamm.energy_i

    # @comments = @mamm.comments

  end

  def new
    #Petit message d´encouragement de la veille?

    @mamm = DailyMeeting.find(params[:daily_meeting_id])
    @objective = Objective.new
    @pillars = Pillar.all.map { |p| [p.title, p.id] }

  end

  def edit
    # @mamm = DailyMeeting.find(params[:id])
  end


  def update
    # @mamm = DailyMeeting.find(params[:id])
    # @mamm.update(daily_meeting_params)
    # redirect_to daily_meeting_path(@mamm)
  end

  def create
    @mamm = DailyMeeting.find(params[:daily_meeting_id])
    @objective = Objective.new
    @objective.description = objective_params[:description]
    @objective.pillar = Pillar.find(objective_params[:pillar])
    @objective.daily_meeting = @mamm
    @objective.completed = false
    if @objective.save!
      redirect_to daily_meeting_path(@mamm)
    else
      render :new
    end


    # @mamm = DailyMeeting.new(daily_meeting_params)
    # if @mamm.save
    #   redirect_to daily_meeting_path(@mamm)
    # else
    #   render :new
    # end
  end

  def destroy
  end

  private

  def objective_params

    params.require(:objective).permit(:description, :completed, :pillar)

  end
end
