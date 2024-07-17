module ApplicationHelper
  def tailwind_classes_for(flash_type)
    {
      notice: "bg-green-400 border-l-4 border-green-700 text-white",
      error:   "bg-red-400 border-l-4 border-red-700 text-black",
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def flash_class(level)
    case level.to_sym
    when :notice, :success then "bg-green-400"
    when :error, :alert then "bg-red-400"
    when :warning then "bg-yellow-400"
    else "bg-blue-400"
    end
  end

  def flash_border_color(level)
    case level.to_sym
    when :notice, :success then "green-700"
    when :error, :alert then "red-700"
    when :warning then "yellow-700"
    else "blue-700"
    end
  end
end
