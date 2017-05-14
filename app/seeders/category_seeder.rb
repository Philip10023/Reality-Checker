class CategorySeeder
  CATEGORIES = [
    {
      title: "Philosophy",
      description: "The world's greatest unanswered questions"
    }, {
      title: "Love",
      description: "Your perception on love"
    }, {
      title: "Wisdom",
      description: "Wise words from wise people"
    }, {
      title: "Work/School",
      description: "Don't be too negative on this one ;)"
    }, {
      title: "Traveling",
      description: "Your favorite Travel spots, and stories from traveling"
    }, {
      title: "TV entertainment",
      description: "Movies, shows, media, and other forms of entertainment"
    }, {
      title: "Food/Cooking",
      description: "Stories about cooking, your favorite recipes, and more"
    }, {
      title: "Anecdotes",
      description: "Stories from your life"
    }, {
      title: "Literature",
      description: "Favorite/least favorite books, quotes from books, and quotes form authors"
    }, {
      title: "History",
      description: "Your favorite, or most important historical events and quotes"
    }, {
      title: "Web Developing",
      description: "Interesting facts and stories about developer scene"
    }, {
      title: "Music",
      description: "Favorite current, or upcoming artists songs and quotes"
    }, {
      title: "Politics",
      description: "Your opinions on the current political environment (this could get ugly)"
    }, {
      title: "Random",
      description: "The title speaks for itself! This could be anything"
    }
  ].freeze

  def self.seed!
    CATEGORIES.each do |category_params|
      title = category_params[:title]
      category = Category.find_or_initialize_by(title: title)
      category.assign_attributes(category_params)
      category.save!
    end
  end
end
