class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid, force: :cascade do |t|
      t.string       :username, index: {unique: true}, null: false
      t.string       :email, index: {unique: true}, null: false
      t.string       :first_name, null: false
      t.string       :last_name, null: false
      t.string       :location, null: false
      t.timestamp    :created_at, null: false
      t.timestamp    :updated_at, null: false
    end
  end
end
