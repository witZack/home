class CreateProfileTable < ActiveRecord::Migration
  def change
    create_table :profiles, id: :uuid, force: :cascade do |t|
      t.uuid         :user_id, index: true, foreign_key: { references: :users, on_delete: :cascade }, null: false
      t.string       :about, null: false
      t.string       :main_image_link, null: true
      t.timestamp    :created_at, null: false
      t.timestamp    :updated_at, null: false
    end
  end
end
