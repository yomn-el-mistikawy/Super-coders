class CreateProjectGoals < ActiveRecord::Migration
  def self.up
    create_table :project_goals do |t|
      t.string :description
      t.boolean :reached
      t.belongs_to :project
      t.timestamps
    end
  end

  def self.down
  	drop_table :project_goals
  end	
end
