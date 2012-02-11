class CreateTotos < ActiveRecord::Migration
  def change
    create_table :totos do |t|

      t.timestamps
    end
  end
end
