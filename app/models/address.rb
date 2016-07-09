class Address < ApplicationRecord
    enum address_type: [:billing, :shipping]
end
