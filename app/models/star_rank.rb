class StarRank < ActiveRecord::Base
  attr_accessible :advancement_id, :five_li, :five_li_date, :five_pi, :five_pi_date, :four_li, :four_li_date, :four_pi, :four_pi_date, :one_li, :one_li_date, :one_pi, :one_pi_date, :seven_li, :seven_li_date, :seven_pi, :seven_pi_date, :six_li, :six_li_date, :six_pi, :six_pi_date, :three_li, :three_li_date, :three_pi, :three_pi_date, :two_li, :two_li_date, :two_pi, :two_pi_date
  belongs_to :advancement
end
