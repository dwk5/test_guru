class AddBodyColumnInAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column(:answers, :body, :string)
  end
end
