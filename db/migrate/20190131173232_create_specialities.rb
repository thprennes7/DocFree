class CreateSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :specialities do |t|
      t.string :name
      t.belongs_to :doctor, index: true
      t.belongs_to :speciality_doctor, index: true
      t.timestamps
    end
  end
end
