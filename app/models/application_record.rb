# frozen_string_literal: true

# ApplicationRecord main class for model based on active record
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
