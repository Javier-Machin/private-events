class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.integer :invitation_sender
      t.integer :event_id
      t.integer :invited_user

      t.timestamps
    end
  end
end
