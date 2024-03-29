class EventsController < ApplicationController
    def index
        events = Event.all
        render json: EventSerializer.new(events).to_serialized_json
    end
    def show 
        event = Event.find(params[:id])
        render json: EventSerializer.new(event).to_serialized_json
    end
end
