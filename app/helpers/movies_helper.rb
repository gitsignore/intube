module MoviesHelper
  def format_youtube_thumbnail(link)
    link = link.match(/(?:youtu\.be\/|youtube\.com(?:\/embed\/|\/v\/|\/watch\?v=|\/user\/\S+|\/ytscreeningroom\?v=|\/sandalsResorts#\w\/\w\/.*\/))([^\/&]{10,12})/).captures
    "https://img.youtube.com/vi/" + link[0] + "/0.jpg"
  end
end
