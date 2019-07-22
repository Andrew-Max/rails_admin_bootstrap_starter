class CreateInitial < ActiveRecord::Migration[5.2]
  def change
    create_table :projects, id: :uuid do |t|
      t.references :user

      t.timestamps
    end

    create_table :datasets, id: :uuid do |t|
      t.string :name
      t.timestamps
    end

    create_join_table :projects, :datasets do |t|
      t.index [:project_id, :dataset_id]
    end
  end
end
