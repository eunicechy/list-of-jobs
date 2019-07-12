class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :field, foreign_key: true
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
