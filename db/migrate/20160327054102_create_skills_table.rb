class CreateSkillsTable < ActiveRecord::Migration
  def change
    create_table :skills, id: :uuid do |t|
      t.uuid         :user_id, index: true, foreign_key: { references: :users, on_delete: :cascade }, null: false
      t.string       :title, null: false
      t.string       :disciplines, null: true
      t.timestamp    :created_at, null: false
      t.timestamp    :updated_at, null: false
    end
  end
end
