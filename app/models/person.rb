class Person
  include ActiveModel::Validations

  attr_accessor :name

  validates :name, presence: true, allow_nil: true, allow_blank: true, strict: true, on: :create, if: :some_method

  # validates :name, presence: true, allow_nil: true #, allow_blank: true, strict: true, on: :create, if: :some_method
  #
  # validates :name, presence: true, allow_blank: true #, strict: true, on: :create, if: :some_method
  #
  # validates :name, presence: true, strict: true #, on: :create, if: :some_method

  validates :name, presence: { message: 'name should presence' }

  def some_method
    true
  end
end
