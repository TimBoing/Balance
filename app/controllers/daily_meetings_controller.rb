class DailyMeetingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def show
    @mamm = DailyMeeting.find(params[:id])

    @physique = @mamm.energy_p
    @emotionnel = @mamm.energy_e
    @intellectuel = @mamm.energy_i

    @comments = @mamm.comments

    @objectives = @mamm.objectives
  end

  def new
    #Petit message d´encouragement de la veille?

    @mamm = DailyMeeting.new
    @start_time = Time.now
  end

  def edit
    @mamm = DailyMeeting.find(params[:id])
  end


  def update
    @mamm = DailyMeeting.find(params[:id])
    @mamm.update(daily_meeting_params)
    redirect_to daily_meeting_path(@mamm)
  end

  def create
    @mamm = DailyMeeting.new(daily_meeting_params)
    if @mamm.save
      redirect_to daily_meeting_path(@mamm)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def daily_meeting_params

    params.require(:daily_meeting).permit(:start_time, :comments, :energy_p, :energy_i, :energy_e)

  end

end
