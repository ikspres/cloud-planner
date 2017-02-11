class Provider < ApplicationRecord
  has_many :regions
  has_many :machine_types


  def self.load_providers
    return "Already Loaded" if self.count > 0

    ['aws', 'azure', 'google'].each do |p|
      create name: p
    end
  end

end
