class AddAttachmentPictureToCats < ActiveRecord::Migration
  def self.up
    change_table :cats do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :cats, :picture
  end
end
