class Author

  attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  # def add_song_by_name(name)
  #   song = Song.new(name)
  #   @songs << song
  #   song.artist = self
  # end

  def self.post_count
    Post.all.size
  end

end
