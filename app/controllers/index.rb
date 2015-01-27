get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

# get '/?create' do
#   puts 'yahoo'
#   erb :newpost
# end

get '/:name' do
  @post_array = []
  @category = Category.where(name: params[:name]).first
  # cat_id =  Category.select('id').where("name = ?", params[:name]).shift.id
  @posts = @category.posts
  # Post.where("category_id = ?",  cat_id).each do |entry|
  #   @post_array << "<a href=/post/#{entry.id}>#{entry.title}</a> <p>#{entry.desc}</p> <h2>#{entry.price}</h2><img src=#{entry.url}>"
  # end
  @post_string = @post_array.join(' <br>')
  erb :category
end


get '/post/new' do
  erb :newpost
end
