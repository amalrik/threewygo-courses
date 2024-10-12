# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
%w[Curso\ de\ C curso\ Javascript React Rails\ Iniciante].each do |title|
  Course.find_or_create_by!(title:) do |course|
    course.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    course.start_at = 5.days.from_now
    course.end_at = 3.months.from_now
  end
end
