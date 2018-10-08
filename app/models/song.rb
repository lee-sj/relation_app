class Song < ApplicationRecord
    validates :title, presence: true
    validates :lyric, length: {minimum: 10 }
end
