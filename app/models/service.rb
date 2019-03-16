class Service < ApplicationRecord
  belongs_to :service_type

  def label
    "#{service_type.name} - #{date}"
  end
end
