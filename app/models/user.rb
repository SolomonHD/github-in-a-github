class User
  def initialize
    user_url = "https://api.github.com/users/SolomonHD/repos"
    @user_data = HTTParty.get(user_url, :headers => {
      "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
      "User-Agent" => "SolomonHD" })
  end

  def number_of_repos
    @user_data.length
  end

  def number_forked
    count = 0
    @user_data.length.times do |u|
      if @user_data[u]["fork"] == true
        count += 1
      end
    end
    count
  end

  def list_repos
    array = []
    @user_data.length.times do |u|
      array << @user_data[u]["name"]
    end
    array
  end

  # def name[index]
  #   @user_data[index]["name"]
  # end
end
