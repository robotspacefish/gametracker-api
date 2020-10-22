class Console < ApplicationRecord
  belongs_to :platform, polymorphic: true
end
