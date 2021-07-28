class CreateTaskOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :task_organizations do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
