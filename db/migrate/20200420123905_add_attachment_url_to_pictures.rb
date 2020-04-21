class AddAttachmentUrlToPictures < ActiveRecord::Migration[6.0]
  def self.up
    change_table :pictures do |t|
      t.attachment :url
    end
  end

  def self.down
    remove_attachment :pictures, :url
  end
end
