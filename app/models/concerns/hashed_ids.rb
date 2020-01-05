require 'active_support/concern'
require 'digest'

module HashedIds
  extend ActiveSupport::Concern

  def to_param
    return nil unless self.id
    "#{self.id}-#{self.class.checksum self.id.to_s}"
  end
  
  class_methods do
    def checksum id
      salt = 'FgVGr02k2hVqEyAUxlRtZXNLwKpYYd'
      Digest::MD5.hexdigest(salt + id)
    end

    def valid_param param
      parts = param.split '-'
      parts[1] == checksum(parts[0])
    end
  end
end