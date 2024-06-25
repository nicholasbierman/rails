class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      # t.timestamps defines created_at and updated_at columns
      t.timestamps
    end
  end
end
