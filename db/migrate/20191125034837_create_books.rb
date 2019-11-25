class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.references :person, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
