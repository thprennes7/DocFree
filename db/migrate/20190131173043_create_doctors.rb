class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code
      t.references :city, foreign_key: true
      t.belongs_to :speciality_doctor, index: true
      t.timestamps
    end
  end
end
