require 'rails_helper'

describe Person do
  # it { should validate_presence_of(:name).allow_nil.allow_blank.strict(true).on(:create).if(:some_method) }

  it { should validate_presence_of(:name).allow_nil.allow_blank.strict(true).on(:create).if(:some_method) }

  # it { should validate_presence_of(:name).allow_nil } #.allow_blank.strict(true).on(:create).if(:some_method) }
  #
  # it { should validate_presence_of(:name).allow_blank } #.strict(true).on(:create).if(:some_method) }
  #
  # it { should validate_presence_of(:name).strict(true) } #.on(:create).if(:some_method) }

  # validate_presence_of

  # validates :name, presence: true, allow_nil: true, allow_blank: true, strict: true, on: :create, if: :some_method
  #
  # validates :name, presence: { message: 'name should presence' }


  it { should validate_presence_of(:name).with_message('name should presence') }
end
