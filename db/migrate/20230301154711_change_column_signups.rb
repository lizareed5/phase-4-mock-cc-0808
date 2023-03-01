class ChangeColumnSignups < ActiveRecord::Migration[6.1]
  def change
    change_column :signups, :time, :integer, after: :activity_id

  end
end
