module ApplicationHelper

  ALERTS = {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
  }.freeze

  def current_year
    Time.current.year
  end

  def github_url(author, repo)
    link_to 'Тест-Гуру', "https://github.com/#{author}/#{repo}", target: "_blank"
  end

  def github_url_author(name, author)
    link_to name, "https://github.com/#{author}", target: "_blank"
  end

  def bootstrap_class_for_flash(flash_type)
    ALERTS[flash_type.to_sym] || flash_type.to_s
  end


end
