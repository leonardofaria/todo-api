class Tasks < ActiveRecord::Migration
  def up
  	create_table :tasks do |t|
  		t.string :name
  		t.integer :completed
  		t.references :category, foreign_key: true
  	end
  end

  def down
  	drop_table :tasks
  end
end
