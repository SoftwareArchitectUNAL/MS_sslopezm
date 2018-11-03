class MurderSerializer < ActiveModel::Serializer
  attributes :id, :locality, :body_count, :description
end
