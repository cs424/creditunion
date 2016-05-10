class AddDiscardToCredits < ActiveRecord::Migration
  def change
    add_column :credits, :discard, :integer, default: 0
  end
end
