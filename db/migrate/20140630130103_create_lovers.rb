class CreateLovers < ActiveRecord::Migration
  def change
    create_table :lovers do |t|
      t.string :name
      t.string :secret_answer
      t.string :secret_question
      t.string :provider
      t.string :uid
      t.references :lover, index: true
      t.timestamps
    end
  end
end
