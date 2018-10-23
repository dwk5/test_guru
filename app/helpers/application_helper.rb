module ApplicationHelper

  def current_year
    Time.zone.now.year
  end

  def github_url(author, repo)
    link_to 'Тест-Гуру', "https://github.com/#{author}/#{repo}", :target => "_blank"
  end

  def github_url_author(name, author)
    link_to name, "https://github.com/#{author}", :target => "_blank"
  end

end
