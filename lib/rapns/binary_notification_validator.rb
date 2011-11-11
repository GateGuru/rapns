module Rapns
  class BinaryNotificationValidator < ActiveModel::Validator

    def validate(record)
      if record.size_in_bytes > 256
        record.errors[:base] << "APN notification cannot be larger than 256 bytes. Try condensing your alert and device attributes."
      end
    end
  end
end