class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @people = Person.new
  end

  def edit
    @people = Person.find(params[:id])
  end
  
  def show
    @people = Person.find(params[:id])
  end

  #following is ...
  
  def create
    @people = Person.new(people_params)
  
    if @people.save
      redirect_to @people
    else
      render 'new'
    end
  end
  
  def update
    @people = Person.find(params[:id])
  
    if @people.update(people_params)
      redirect_to @people
    else
      render 'edit'
    end
  end
  
  def destroy
    @people = Person.find(params[:id])
    @people.destroy
  
    redirect_to people_path
  end
  
  private
    def people_params
      params.require(:people).permit(:name, :height, :weight, :red, :green, :blue, :age, :gender, :ethnicity)
    end
    
end
