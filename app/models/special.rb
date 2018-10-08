class Special < ActiveRecord::Base
  belongs_to :comedian

  def self.avg_runtime
    average(:runtime)
  end
end