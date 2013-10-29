class CreateRoles < ActiveRecord::Migration
  def Change

    create_table :roles do |t|
      t.string :name
      t.string :description
    end

  end

end
