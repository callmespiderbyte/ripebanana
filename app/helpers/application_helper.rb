module ApplicationHelper

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == params[:sort] && params[:direction] == "desc") ? "asc" : "desc"

    arrows = { 'asc' => "▲", 'desc' => "▼" }

    link_to title + (column == sort_column ? arrows[sort_direction] : ""), :sort => column, :direction => direction
  end

end
