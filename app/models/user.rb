class User < ApplicationRecord
  scope :find_non_black_list, lambda { where(black_list: false) }
  scope :find_black_list, lambda { where(black_list: true) }
end
