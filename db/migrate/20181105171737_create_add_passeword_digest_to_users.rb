class CreateAddPassewordDigestToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_passeword_digest_to_users do |t|
add_column :users, :password_digest, :string
      t.timestamps
    end
  end
end
