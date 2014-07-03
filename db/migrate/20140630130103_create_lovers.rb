class CreateLovers < ActiveRecord::Migration
  def change
    create_table :lovers do |t|
      t.string :name
      t.string :secret_answer
      t.string :secret_question
      t.string :provider
      t.string :uid
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.references :lover, index: true
      t.timestamps
    end
  end
end
