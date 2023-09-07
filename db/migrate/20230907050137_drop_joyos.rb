class DropJoyos < ActiveRecord::Migration[7.0]
  def change
    drop_table :joyos, force: :cascade
  end
end
