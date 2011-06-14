class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :short_description
      t.boolean :done

      t.timestamps
    end
  end
end
