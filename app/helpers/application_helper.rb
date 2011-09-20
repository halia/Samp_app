module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails Tutorial Samp App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("LogoChoiceC.jpg", :alt => "Samp App", :class => "round")
  end
end
