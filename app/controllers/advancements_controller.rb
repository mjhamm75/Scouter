class AdvancementsController < ApplicationController
  # GET /advancements
  # GET /advancements.json
  def index
    @advancements = Advancement.all
    @advancement = Advancement.first
    @boy_scout = @advancement.boy_scout_rank
    @star = @advancement.star_rank
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advancements }
    end
  end

  # GET /advancements/1
  # GET /advancements/1.json
  def show
    puts "SHOW"
    puts params.inspect
    @star = Scout.find(params[:scout_id]).advancement.boy_scout_rank
    puts "]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]"
    puts @star.one_li

    @advance = Scout.find(params[:scout_id]).advancement
    con = params[:con]
    req = params[:req]
    puts con
    puts req
    # @advance.toggle_approve(params[:con], params[:req])
    @link = @advance.toggle_approve(con, req)
    respond_to do |format|
      format.json
    end
  end

  # GET /advancements/new
  # GET /advancements/new.json
  def new
    @advancement = Advancement.new(params[:advancement])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @advancement }
    end
  end

  # GET /advancements/1/edit
  def edit
    @advancement = Advancement.find(params[:id])
  end

  # POST /advancements
  # POST /advancements.json
  def create
    @advancement = Advancement.new(params[:advancement])

    respond_to do |format|
      if @advancement.save
        format.html { redirect_to @advancement, notice: 'Advancement was successfully created.' }
        format.json { render json: @advancement, status: :created, location: @advancement }
      else
        format.html { render action: "new" }
        format.json { render json: @advancement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advancements/1
  # PUT /advancements/1.json
  def update
    @advancement = Advancement.find(params[:id])

    respond_to do |format|
      if @advancement.update_attributes(params[:advancement])
        format.html { redirect_to @advancement, notice: 'Advancement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advancement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advancements/1
  # DELETE /advancements/1.json
  def destroy
    @advancement = Advancement.find(params[:id])
    @advancement.destroy

    respond_to do |format|
      format.html { redirect_to advancements_url }
      format.json { head :no_content }
    end
  end
end
