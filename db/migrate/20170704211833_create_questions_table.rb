class CreateQuestionsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.column :user_id, :integer
      t.column :content, :text

      t.timestamps
    end
    create_table :answers do |t|
      t.column :user_id, :integer
      t.column :question_id, :integer
      t.column :content, :text

      t.timestamps
    end
  end
end
