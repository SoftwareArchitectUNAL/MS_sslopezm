class ViolenceActSerializer < ActiveModel::Serializer
  attributes :id, :act_type, :street_id, :gender_id, :intrafamily_id, :murder_id
end
