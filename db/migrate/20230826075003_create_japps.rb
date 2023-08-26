class CreateJapps < ActiveRecord::Migration[7.0]
  def change
    create_table :japps do |t|
      t.string :title
      t.text :body
      t.string :status

      t.timestamps
    end
  end
end
