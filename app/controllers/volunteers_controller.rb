class VolunteersController < ApplicationController
    def index
        volunteers = Volunteer.all
        render json: VolunteerSerializer.new(volunteers).to_serialized_json
    end
    def show 
        volunteer = Volunteer.find(params[:id])
        render json: VolunteerSerializer.new(volunteer).to_serialized_json
    end

    def create 
        @volunteer = Volunteer.new(volunteer_params)
        if @volunteer.save
        #   flash[:notice] = "Account created successfully!"
        #   session[:volunteer_id]=@volunteer.id
          redirect_to volunteer_path(@volunteer)
        else
          render :new
        end
        
        private
        def volunteer_params
            params.require(:volunteer).permit(:name, :volunteer_name, :address, :age, :gender, 
            :password, :password_confirmation )
        end
    endra
