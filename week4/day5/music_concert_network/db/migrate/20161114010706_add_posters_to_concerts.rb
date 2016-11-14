class AddPostersToConcerts < ActiveRecord::Migration[5.0]
    def self.up
      change_table :concerts do |t|
        t.attachment :poster
      end
    end

    def self.down
      drop_attached_file :concerts, :poster
    end
end
