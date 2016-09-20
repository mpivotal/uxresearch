class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.string :location
      t.string :job_title

      t.timestamps
    end
  end
end
