class CreateWorkExperiencesTable < ActiveRecord::Migration
  def change
    create_table :work_experiences, id: :uuid, force: :cascade do |t|
        t.uuid         :user_id, index: true, foreign_key: { references: :users, on_delete: :cascade }, null: false
        t.string       :employer, index: true, null: false
        t.string       :employer_link, null: true
        t.string       :title, null: true
        t.string       :summary, null: true
        t.date         :start_date, null: false
        t.date         :end_date, null: true
        t.timestamp    :created_at, null: false
        t.timestamp    :updated_at, null: false
    end
  end
end
