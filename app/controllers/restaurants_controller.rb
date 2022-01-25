class RestaurantsController < ApplicationController
  
  def home
    @name = 'Pedro'

 #render "mi_vista"
    
  end
  
  def index
    @restaurants= Restaurant.all
 
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create

    @restaurant=Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to @restaurant
      else
        render :new
      end
    end

    


  def edit

    @restaurant = Restaurant.find(params[:id])
           
  end


  def update

    @restaurant = Restaurant.find(params[:id])
      if @restaurant.update(restaurant_params)
       redirect_to @restaurant
      else
       render :edit
    end
  end

  def delete
    @erestaurant=Restaurant.find(params[:id])
   
    #render json: @edificio
  end


  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy

    flash[:notice] = "El Restaurant ha sido actualizado"
    redirect_to restaurants_path
  end



  private
  def restaurant_params
    params.require(:restaurant).permit(:nombre,:direccion,:rating,:nombre_chef)
  end

end
