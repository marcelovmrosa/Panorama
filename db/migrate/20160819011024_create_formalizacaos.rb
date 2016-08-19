class CreateFormalizacaos < ActiveRecord::Migration
  def change
    create_table :formalizacaos do |t|
      t.string :tema
      t.text :justificativa
      t.boolean :validacao
      t.text :motivo
      t.datetime :data
      t.references :aluno, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
