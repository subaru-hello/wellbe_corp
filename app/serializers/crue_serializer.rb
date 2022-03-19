# frozen_string_literal: true

class CrueSerializer
  include JSONAPI::Serializer
  attributes :name
  has_many :records
end
