class AddCreditToCredits < ActiveRecord::Migration
  def change
    add_reference :credits, :credit, index: true, foreign_key: true
  end
end
