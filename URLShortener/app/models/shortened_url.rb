require 'securerandom'
class ShortenedUrl < ApplicationRecord
    validates :short_url, presence: true
    validates :short_url, uniqueness: true

    def random_code
        SecureRandom.urlsafe_base64
    end




end
