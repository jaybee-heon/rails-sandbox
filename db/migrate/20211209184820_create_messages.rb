class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :user
      t.text :content
      t.boolean :read

      t.timestamps
    end
  end
end