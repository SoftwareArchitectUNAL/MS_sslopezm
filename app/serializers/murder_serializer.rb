class MurderSerializer < ActiveModel::Serializer
  attributes :id, :neighborhood, :body_count, :description
end
