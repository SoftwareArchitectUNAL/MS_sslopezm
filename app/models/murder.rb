class Murder < ApplicationRecord

    has_one :violence_act, dependent: :destroy

end
