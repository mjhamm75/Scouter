class Advancement < ActiveRecord::Base
  attr_accessible :rank, :scout_id
  belongs_to :scout
  has_one :boy_scout_rank, :dependent => :destroy
  has_one :star_rank, :dependent => :destroy
  accepts_nested_attributes_for :boy_scout_rank
  accepts_nested_attributes_for :star_rank
  attr_accessible :boy_scout_rank_attributes
  attr_accessible :star_rank_attributes

  def toggle_approve(scout, con, req)
    
    puts "TOGGLE_APPROVE"
    puts "??????????????????????????????????"
    puts scout.id
    puts con
    puts req
    advancement = scout.advancement
    rank = scout.advancement.send(con)
    puts rank.class

   	if(scout.advancement.send(con).send(req).blank?)
   		scout.advancement.send(con).send(req + '=', "jh")
   		puts "Inserted Name"
   		puts scout.advancement.send(con).send(req)
      puts scout.advancement.send(con).send(req + "_date" + '=', Date.today.to_s)
      puts "Inserted Date"
   	else
   		scout.advancement.send(con).send(req + '=', "")
   		puts "Inserted Blank"
   		puts scout.advancement.send(con).send(req)
      puts scout.advancement.send(con).send(req + "_date" + '=', "")
      puts "Removed Date"
   	end
   	puts "SAVED"
   	scout.advancement.send(con).save
   	puts "FINISHED"
  end

  def update_date(scout, con, req, date)
    advancement = scout.advancement
    rank = scout.advancement.send(con)
    req_complete = req + "_date"
    scout.advancement.send(con).send(req_complete + '=', date)
    scout.advancement.send(con).send(req + '=', "jh")
    scout.advancement.send(con).save
    puts "Date Saved" 
  end

end
