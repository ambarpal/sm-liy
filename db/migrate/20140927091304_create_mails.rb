class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string :from
      t.string :to
      t.string :subject
      t.text :description
      t.string :timestamp

      t.timestamps
    end
  end
end
