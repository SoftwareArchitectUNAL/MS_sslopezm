class Gender < ApplicationRecord

    has_one :violence_act, dependent: :destroy

end
