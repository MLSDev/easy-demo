RSpec.configure do |config|
  config.include Easy::Matchers::Validations, type: :model
end
