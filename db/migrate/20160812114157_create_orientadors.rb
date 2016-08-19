class CreateOrientadors < ActiveRecord::Migration
  def change
    create_table :orientadors do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
