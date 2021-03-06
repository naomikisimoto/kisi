class TripsController < ApplicationController



    def index
        if params[:search] == nil
            @trips= Trip.all
          elsif params[:search] == ''
            @trips= Trip.all
          else
            #部分検索
            @trips = Trip.where("departure LIKE ? ",'%' + params[:search] + '%')
          end
       
        
    end
    
    def new
        @trip=Trip.new
    end

    def create
        
        trip = Trip.new(trip_params)
        trip.user_id = current_user.id
        if trip.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end
    def edit
        @trip = Trip.find(params[:id])
    end
    def update
        trip = Trip.find(params[:id])
        if trip.update(trip_params)
            redirect_to :action => "show", :id => trip.id
        else
            redirect_to :action => "new"
        end
    end
    def show
        @trip = Trip.find(params[:id])

    end

   





    private
    def trip_params
        params.require(:trip).permit(:departure, :destination, :detail, :transportation, :thought, :date, :whoslive, :id, :image, tag_ids: [])
    end
    

end
