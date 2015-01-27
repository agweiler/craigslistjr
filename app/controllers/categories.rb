require 'byebug'


get "/categories/new" do
  erb :'categories/new'
end

post "/categories" do
  @category = Category.create(params[:categories])
  redirect to "/categories/#{@category.id}"
end

get "/categories/:id" do
  @category = Category.find params[:id]
  erb :"categories/show"
end

get "/categories/:id/edit" do
  @category = Category.find params[:id]
  erb :"categories/edit"
end

patch "/categories/:id" do
  @category = Category.find params[:id]
  @category.update_attributes(params[:categories])

  redirect to "/categories/#{@category.id}"
end

delete "/categories/:id" do
  @category = Category.find params[:id]
  @category.destroy
  redirect to "/"
end