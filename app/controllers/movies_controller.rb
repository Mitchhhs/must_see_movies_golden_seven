class MoviesController < ApplicationController

  def directors
    @list_of_directors = Director.all
  end

  def spec_director

    @director = Director.find(params[:id])
  end

  def delete_director

    row = Director.find(params[:id])
    row.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def new_form

    render('movies/new.html.erb')
  end

  def create_director

    row = Director.new
    row.name= params[:the_name]
    row.bio= params[:the_bio]
    row.dob= params[:the_dob]
    row.image_url= params[:the_photo]
    row.save

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    @director = Director.find(params[:id])
    @action = "http://localhost:3000/update_director/" + params[:id]

  end

  def update_director
    row = Director.find(params[:id])
    row.name= params[:the_name]
    row.bio= params[:the_bio]
    row.dob= params[:the_dob]
    row.image_url= params[:the_photo]
    row.save


    url = "http://localhost:3000/directors/" + params[:id]

    redirect_to(url)
  end


end
