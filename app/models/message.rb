class Message < ApplicationRecord
  belongs_to :visitor
  def mark_read
    update(status: true) if status == false
  end
end
