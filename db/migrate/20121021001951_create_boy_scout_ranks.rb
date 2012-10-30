class CreateBoyScoutRanks < ActiveRecord::Migration
  def change
    create_table :boy_scout_ranks do |t|
      t.integer :advancement_id
      t.string :one_pi
      t.date :one_pi_date
      t.string :one_li
      t.date :one_li_date
      t.string :two_pi
      t.date :two_pi_date
      t.string :two_li
      t.date :two_li_date
      t.string :three_pi
      t.date :three_pi_date
      t.string :three_li
      t.date :three_li_date
      t.string :four_pi
      t.date :four_pi_date
      t.string :four_li
      t.date :four_li_date
      t.string :five_pi
      t.date :five_pi_date
      t.string :five_li
      t.date :five_li_date
      t.string :six_pi
      t.date :six_pi_date
      t.string :six_li
      t.date :six_li_date
      t.string :seven_pi
      t.date :seven_pi_date
      t.string :seven_li
      t.date :seven_li_date
      t.string :eight_pi
      t.date :eight_pi_date
      t.string :eight_li
      t.date :eight_li_date
      t.string :nine_pi
      t.date :nine_pi_date
      t.string :nine_li
      t.date :nine_li_date
      t.string :ten_pi
      t.date :ten_pi_date
      t.string :ten_li
      t.date :ten_li_date

      t.timestamps
    end
  end
end
