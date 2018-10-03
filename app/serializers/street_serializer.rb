class StreetSerializer < ActiveModel::Serializer
  attributes :id, :neighborhood, :stype, :body_count, :description
end
