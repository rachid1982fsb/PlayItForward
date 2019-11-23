class NonprofitSerializer
 
    def initialize( nonprofit_object)
      @nonprofit =  nonprofit_object
    end
     
    def to_serialized_json
      @nonprofit.to_json(:except => [:updated_at, :created_at])
    end
end
