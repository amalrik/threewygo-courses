class Video < ApplicationRecord
  belongs_to :course
  has_one_attached :video do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 100, 100 ]
  end
end
