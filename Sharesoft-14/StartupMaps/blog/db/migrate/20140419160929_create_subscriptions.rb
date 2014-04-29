class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
	  t.belongs_to :subscriber
	  t.belongs_to :subscribee
      t.timestamps
    end
  end
end
