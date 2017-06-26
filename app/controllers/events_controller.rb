class EventsController < ApplicationController
  def index
    @events = Event.all

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.save!
  end

  def update
    @event = Event.find(params[:id])
    @event.update!(event_params)

    render :show
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy!

    render :show
  end

  private

  def event_params
    params.require(:event).permit(:start_time, :end_time, :title, :description)
  end
end
