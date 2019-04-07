json.array! @tasks do |task|
  json.id task.id
  json.name task.name
  json.user task.user.name
  json.user_id task.user.id
  json.role task.user.role.name
  json.location task.location.name
  json.completed task.completed
end