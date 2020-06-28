class AddColumnToParises < ActiveRecord::Migration[6.0]
  def change
    add_reference :parises, :user, index: true
  end
end
