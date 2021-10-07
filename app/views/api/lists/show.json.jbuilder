# frozen_string_literal: true

json.extract! @list, :id, :title, :color, :icon, :metadata
json.tasks @list.tasks do |task|
  json.extract! task, :id, :title, :note, :due_date, :done, :metadata
end
