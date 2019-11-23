class VolunteerSerializer
 
    def initialize(volunteer_object)
      @volunteer = volunteer_object
    end
     
    def to_serialized_json
      @volunteer.to_json(:except => [:updated_at, :created_at])
    end
end
