class StreetSerializer < ActiveModel::Serializer
  attributes :id, :locality, :stype, :body_count, :description
end
