class GenderSerializer < ActiveModel::Serializer
  attributes :id, :neighborhood, :gtype, :criminal_complaint, :body_count
end
