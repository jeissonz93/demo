class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_phone
      t.string :home_phone
      t.string :string
      t.string :e_mail
      t.string :age
      t.text :about

      t.timestamps null: false
    end
  end
end
