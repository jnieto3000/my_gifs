class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show 
    @gif = Gif.find_by_id(params['id'])
    render 'show'
  end
  
  def new

  end
  
  def create
    g = Gif.new
    g.caption = params['caption']
    g.url = params['url']
    g.save
    redirect_to "/gifs/#{g.id}"
  end  
  
  def edit
    @gif = Gif.find_by_id(params['id'])
  end
  
  def update
    g = Gif.find_by_id(params['id'])
    g.caption = params['caption']
    g.url = params['url']
    g.save    
    redirect_to "/gifs/#{g.id} "
  end
  

#   def first
#       @url = "http://f.cl.ly/items/0R0D3B18221l0H242F3L/tumblr_mbbxc9DUdK1rnvwt1.gif"
#       @caption = "Overwhelmed"
#     render 'show'
#   end
  
#   def second
#     @url = "http://media.tumblr.com/tumblr_mabgi9JAVC1rtufvk.gif"
#     @caption = "Exhausted"
#     render 'show'
#   end
  
#   def third
#     @url = "http://www.reactiongifs.com/wp-content/uploads/2012/06/swag_dance.gif"
#     @caption = "Swag"
#     render 'show'
#   end
  
#   <Gif id: 5, url: "http://i.imgur.com/XVWrWUQ.gif", caption: "Under Water"
  
end