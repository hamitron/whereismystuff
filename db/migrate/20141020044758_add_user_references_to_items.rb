class AddUserReferencesToItems < ActiveRecord::Migration
  def change
  	change_table :items do |t|
  		t.references :user, index: true
  	end

  end
end
