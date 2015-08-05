class  Admin::CarsController < AdminController
	before_action :authenticate_admin!
	def index
		@cars = Car.all
	end
	
	def new
		@admin = current_admin
		@car = Car.new
	end

	def create
		@car = Car.new(car_params)
		if @car.negotiable=="yes"
				@car.negotiable == false
		else
				@car.negotiable == true
		end
		if @car.save
			redirect_to admin_cars_path
		else
			render "new"
		end
	end

	def show
			@car = Car.find(params[:id])
	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		@car = Car.find(params[:id])
			if @car.update(car_params)
				redirect_to admin_cars_path
			else
				render "edit"
			end
	end

	def destroy
		@car = Car.find(params[:id])
		@car.destroy

		redirect_to admin_cars_path
	end

	private
	  def car_params
	    params.require(:car).permit(:name, :brand, :number, :owner, :date, :price, :negotiable, :color)
	  end

end
