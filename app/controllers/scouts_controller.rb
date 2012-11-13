class ScoutsController < ApplicationController
  # GET /scouts
  # GET /scouts.json
  def index
    @scouts = Scout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scouts }
    end
  end

  # GET /scouts/1
  # GET /scouts/1.json
  def show
    @scout = Scout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scout }
    end
  end

  # GET /scouts/new
  # GET /scouts/new.json
  def new
    puts "NEW"
    @scout = Scout.new
    @scout.advancement = Advancement.new
    @scout.advancement.boy_scout_rank = BoyScoutRank.new
    @scout.advancement.star_rank = StarRank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scout }
    end
  end

  # GET /scouts/1/edit
  def edit
    @scout = Scout.find(params[:id])
  end

  # POST /scouts
  # POST /scouts.json
  def create
    puts "CREATE"
    @scout = Scout.new(params[:scout])
    @scout.advancement = Advancement.new
    @scout.advancement.boy_scout_rank = BoyScoutRank.new
    @scout.advancement.star_rank = StarRank.new


    respond_to do |format|
      if @scout.save
        puts "SAVED"
        format.html { redirect_to @scout, notice: 'Scout was successfully created.' }
        format.json { render json: @scout, status: :created, location: @scout }
      else
        puts "NOT SAVED"
        format.html { render action: "new" }
        format.json { render json: @scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scouts/1
  # PUT /scouts/1.json
  def update
    @scout = Scout.find(params[:id])

    respond_to do |format|
      if @scout.update_attributes(params[:scout])
        format.html { redirect_to @scout, notice: 'Scout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scouts/1
  # DELETE /scouts/1.json
  def destroy
    @scout = Scout.find(params[:id])
    @scout.destroy

    respond_to do |format|
      format.html { redirect_to scouts_url }
      format.json { head :no_content }
    end
  end
end
