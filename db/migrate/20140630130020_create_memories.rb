class CreateMemories < ActiveRecord::Migration
  def change
    create_table :memories do |t|
      t.string :title
      t.string :description
      t.boolean :private
      t.references :lover, index: true

      t.timestamps
    end
  end
end
