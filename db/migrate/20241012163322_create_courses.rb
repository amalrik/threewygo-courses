class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description
      t.date :start_at, null: false
      t.date :end_at, null: false
    end
  end
end
