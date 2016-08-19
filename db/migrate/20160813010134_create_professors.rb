class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.references :user, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
