json.extract! course, :id, :title, :description, :start_at, :end_at, :created_at, :updated_at
json.url course_url(course, format: :json)
