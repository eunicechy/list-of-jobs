class CreateJob2s < ActiveRecord::Migration[5.2]
  def change
    create_table :job2s do |t|
      t.references :field, foreign_key: true
      t.string :title
      t.string :company
      t.string :description
      t.string :location
      t.string :link

      t.timestamps
    end
  end
end
