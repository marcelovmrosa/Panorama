class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.boolean :turma, null: false, default: ""
      t.references :user, index: true, foreign_key: true
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
