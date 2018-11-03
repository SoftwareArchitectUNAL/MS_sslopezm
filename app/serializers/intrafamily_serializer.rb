class IntrafamilySerializer < ActiveModel::Serializer
  attributes :id, :locality, :victim, :aggressor, :criminal_complaint
end
