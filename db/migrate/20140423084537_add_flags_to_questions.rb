class AddFlagsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :flags_count, :integer, default: 0
    add_index :questions, :flags_count
  end
end
