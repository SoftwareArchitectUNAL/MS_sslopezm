class GenderSerializer < ActiveModel::Serializer
  attributes :id, :locality, :gtype, :criminal_complaint, :body_count
end
