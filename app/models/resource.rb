require 'securerandom'
class Resource < ActiveRecord::Base
  has_many :titles
  before_create :get_rid
  
  private
  def get_rid
    rid = SecureRandom.hex(5)
    while Resource.find_by(rid:rid)
      rid = SecureRandom.hex(5)
    end
    self.rid = rid
  end
end
