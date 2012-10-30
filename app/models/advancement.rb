class Advancement < ActiveRecord::Base
  attr_accessible :rank, :scout_id
  belongs_to :scout
  has_one :boy_scout_rank, :dependent => :destroy
  has_one :star_rank, :dependent => :destroy
  accepts_nested_attributes_for :boy_scout_rank
  accepts_nested_attributes_for :star_rank
  attr_accessible :boy_scout_rank_attributes
  attr_accessible :star_rank_attributes

  def toggle_approve(con, req)
    
    puts "TOGGLE_APPROVE"
    puts "??????????????????????????????????"
    puts con
    puts req
    rank = self.send(con)
   	puts rank.class
   	if(rank.send(req).blank?)
   		rank.send(req + '=', "jh")
   		puts "Inserted Name"
   		puts rank.send(req)
   	else
   		rank.send(req + '=', "")
   		puts "Inserted Blank"
   		puts rank.send(req)
   	end
   	puts "SAVED"
   	rank.save
   	puts "FINISHED"
  end

end
