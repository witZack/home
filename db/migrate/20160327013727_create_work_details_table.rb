class CreateWorkDetailsTable < ActiveRecord::Migration
  def change
    create_table :work_details, id: :uuid do |t|
      t.uuid         :work_experience_id, index: true, foreign_key: { references: :work_experiences, on_delete: :cascade }, null: false
      t.string       :detail, null: true
      t.timestamp    :created_at, null: false
      t.timestamp    :updated_at, null: false
    end
  end
end
