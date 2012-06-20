class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :recipient_email, :null => false
      t.string :token, :null => false

      t.timestamps
    end
  end
end
