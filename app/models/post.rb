class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true

    has_many_attached :images

    acts_as_taggable_on :tags
    acts_as_taggable_on :skills, :interests
end
