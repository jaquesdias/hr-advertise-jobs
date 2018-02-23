class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.integer :job_id
      t.string :status
      t.string :external_reference
      t.string :ad_description
    end
  end
end
