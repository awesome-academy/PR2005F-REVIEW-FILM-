class AddFieldsToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :cmt_duty_id, :integer
    add_column :comments, :cmt_duty_type, :string
  end
end
