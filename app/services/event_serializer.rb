class EventSerializer
 
    def initialize( event_object)
      @event =  event_object
    end
     
    def to_serialized_json
      @event.to_json(:except => [:updated_at, :created_at])
    end
end