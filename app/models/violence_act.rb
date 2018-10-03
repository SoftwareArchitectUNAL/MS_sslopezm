class ViolenceAct < ApplicationRecord

    #Validations
    validates :act_type, presence: true
    #validate :content_uniqueness
    #validate :generate_type

    #Associations
    belongs_to :street, optional: true
    belongs_to :gender, optional: true
    belongs_to :intrafamily, optional: true
    belongs_to :murder, optional: true


    def content_uniqueness
        if !((street_id.present? ^ gender_id.present? ^ intrafamily_id.present? ^ murder_id.present?) & !(street_id.present? & gender_id.present? & intrafamily_id.present? & murder_id.present?))
          errors.add(:base, "Only one unique type of content allowed and required")
        end
    end


    def generate_type
        self.act_type = "street" if street_id.present?
        self.act_type = "gender" if gender_id.present?
        self.act_type = "intrafamily" if intrafamily_id.present?
        self.act_type = "murder" if murder_id.present?
    end

end
