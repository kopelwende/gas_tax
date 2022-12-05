class CreateGasolines < ActiveRecord::Migration[6.0]
  def change
    create_table :gasolines do |t|
      t.date        :date,                       null: false 
      t.integer     :prefectures_id,             null: false 
      t.string      :municipality,               null: false 
      t.string      :gas_station,                null: false 
      t.integer     :price,                      null: false 
      t.integer     :liter,                      null: false  
      t.integer     :main_gaso_tax,              null: false 
      t.integer     :provisional_gaso_tax,       null: false 
      t.integer     :local_main_gaso_tax,        null: false 
      t.integer     :local_provisional_gaso_tax, null: false 
      t.integer     :consumption_tax,            null: false 
      t.timestamps
    end
  end
end
