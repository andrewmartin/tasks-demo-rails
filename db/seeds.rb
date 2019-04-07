require 'faker'

Role.destroy_all
Location.destroy_all
Task.destroy_all
User.destroy_all

locations = ['Los Angeles', 'San Francisco', 'Denver']
tasks = ['wash car', 'mow lawn', 'clean windows', 'run dishwasher', 'trim hedges']
roles = ['Admin', 'Marketing', 'Support', 'User']

roles.each do |name|
  Role.create!(name: name)
end

20.times do
  @user = User.create!(name: Faker::Name.unique.name)
  @user.build_user_role(role_id: Role.all.sample.id)
  @user.save!

  rand(1..5).times do
    @task = @user.tasks.create!(name: tasks.sample)
    @location = Location.create(name: locations.sample)

    @task.build_location(@location.attributes)
    @task.save!
  end
end