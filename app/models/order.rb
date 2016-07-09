class Order < ApplicationRecord
    enum state: [:in_progress, :in_queue, :in_delivery, :delivered, :canceled]
end
