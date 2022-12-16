class SvienController < ApplicationController
  def index
    @svien=Svien.all
  end

  def new
    @svien = Svien.new
  end

  def show 
    @svien = Svien.all
    redirect_to action: "index"
  end

  def create
    @svien = Svien.new(student_params)
    if @svien.save
      redirect_to action: "index"
    end
  end

  def edit    
    @svien = Svien.find(params[:id])   
  end

  def update
    @svien = Svien.find(params[:id])
    if @svien.update(student_params)
      flash[:notice] = "Update new student successfull"
      redirect_to action: "index"
      else
        flash[:notice] = "Update new student not successfull"
        render action: "edit"
      end
  end

  def destroy
    @query = params[:query]
    @svien = Svien.find(@query)
    @svien.destroy
    redirect_to action: "index"
  end

  def search
    @query = params[:query]
    @svien = Svien.where("sviens.name LIKE ?",["%#{@query}%"])
    render "index"
  end

  private
  def student_params
      params.require(:svien).permit(:name,:nclass)
  end

end
