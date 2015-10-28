Rails.application.routes.draw do

  get("/directors", { :controller => "movies", :action => "directors" })
  get("/directors/new", { :controller => "movies", :action => "new_form" })
  get("/directors/:id", { :controller => "movies", :action => "spec_director" })
  get("/directors/:id/edit_form", { :controller => "movies", :action => "edit_form" })
  get("/delete_director/:id", { :controller => "movies", :action => "delete_director" })
  get("/create_director", { :controller => "movies", :action => "create_director" })
  get("/update_director/:id", { :controller => "movies", :action => "update_director" })
end
