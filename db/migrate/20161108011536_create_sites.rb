class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
    	t.string :url
    	t.string :email
    	t.string :contact
    	t.string :about
    	t.string :facebook
    	t.string :twitter
    	t.string :instagram
    	t.string :youtube

      t.timestamps null: false
    end
  end
end
