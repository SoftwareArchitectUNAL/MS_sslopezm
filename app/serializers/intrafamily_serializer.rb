class IntrafamilySerializer < ActiveModel::Serializer
  attributes :id, :neighborhood, :victim, :aggressor, :criminal_complaint
end
