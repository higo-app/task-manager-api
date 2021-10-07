# frozen_string_literal: true

json.array! @lists do |list|
  json.extract! list, :id, :title, :color, :icon, :tasks, :metadata
end
