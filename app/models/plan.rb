class Plan < ActiveRecord::Base
  before_validation :generate_slug
  
  # Validations
  validates :name, :price, :slug, presence: true

  private

    def generate_slug
      # Not calling to_s throws a weird NOMethodError for NilClass
      # https://github.com/rails-api/rails-api/issues/164
      self.slug = name.gsub(/( )/, '_').downcase
    end
end
