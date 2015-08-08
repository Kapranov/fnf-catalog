# This migration comes from fullcalendar_engine (originally 20131203105320)
class CreateFullcalendarEngineEvents < ActiveRecord::Migration
  def change
    create_table :fullcalendar_engine_events do |t|
      t.belongs_to :user
      t.string :title
      t.datetime :starttime, :endtime
      t.boolean :all_day, :default => false
      t.text :description
      t.integer :event_series_id
      t.timestamps
    end
    add_index :fullcalendar_engine_events, :event_series_id
    add_index :fullcalendar_engine_events, :user_id, unique: true
    add_foreign_key(:fullcalendar_engine_events, :users, dependent: :delete)
  end
end
