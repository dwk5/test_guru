module ApplicationHelper

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
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end


end
