class CreateShuttles < ActiveRecord::Migration[7.0]
  def change
    create_table :shuttles do |t|
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
