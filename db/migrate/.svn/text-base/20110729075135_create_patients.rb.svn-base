class CreatePatients < ActiveRecord::Migration

  def self.up
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.datetime :birthdate
      t.string :gender
      t.string :ssn_number
      t.string :phone_number_1
      t.string :phone_number_2
      t.string :email
      t.string :place
      t.integer :position

      t.timestamps
    end

    add_index :patients, :id

    load(Rails.root.join('db', 'seeds', 'patients.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "patients"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/patients"})
    end

    drop_table :patients
  end

end
