class BoyScoutRank < ActiveRecord::Base
  attr_accessible :advancement_id, :eight_li, :eight_li_date, :eight_pi, :eight_pi_date, :five_li, :five_li_date, :five_pi, :five_pi_date, :four_li, :four_li_date, :four_pi, :four_pi_date, :nine_li, :nine_li_date, :nine_pi, :nine_pi_date, :one_li, :one_li_date, :one_pi, :one_pi_date, :seven_li, :seven_li_date, :seven_pi, :seven_pi_date, :six_li, :six_li_date, :six_pi, :six_pi_date, :ten_li, :ten_li_date, :ten_pi, :ten_pi_date, :three_li, :three_li_date, :three_pi, :three_pi_date, :two_li, :two_li_date, :two_pi, :two_pi_date
  belongs_to :advancement
end
