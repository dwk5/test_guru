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

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} alert-dismissible", role: 'alert') do
        concat(content_tag(:button, class: 'close', data: { dismiss: 'alert' }) do
          concat content_tag(:span, '&times;'.html_safe, 'aria-hidden' => true)
          concat content_tag(:span, 'Close', class: 'sr-only')
        end)
        concat message
      end)
    end
    nil
  end



  #def flash_messages
   # flash.map do |key, msg|
    #  content_tag :div, msg, id: key, class: "flash #{key}"
    #end.join().html_safe
  #end

end
