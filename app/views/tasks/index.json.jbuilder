json.items do
  json.array! @tasks do |task|
    json.id task.id
    json.name task.name
    json.user task.user.name
    json.user_id task.user.id
    json.role task.user.role.name
    json.location task.location.name
    json.completed task.completed
  end
end
json.per_page @tasks.per_page
json.current_page @tasks.current_page
json.total_entries @total