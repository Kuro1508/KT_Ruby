class CreateSviens < ActiveRecord::Migration[7.0]
  def change
    create_table :sviens do |t|
      t.string :name
      t.string :nclass

      t.timestamps
    end
  end
end
