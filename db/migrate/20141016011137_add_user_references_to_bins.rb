class AddUserReferencesToBins < ActiveRecord::Migration
  def change

  	change_table :bins do |t|
  		t.references :user, index: true
  	end
  end
end
