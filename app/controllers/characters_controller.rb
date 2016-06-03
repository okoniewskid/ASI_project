class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
    @races = Race.all()
  end

  # GET /characters/1/edit
  def edit
    @character = Character.find(params[:id])
    @races = Race.all()
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)
    set_main_parameters
    set_secondary_parameters
    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Postać utworzona.' }
        format.json { render :show, status: :created, location: @character }
      else
        @races = Race.all()
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Postać zaktualizowana.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Postać usunięta' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :age, :sex, :eyecolor, :haircolor, :birthsign, :placeofbirth, :specialmarks, :weight, :height, :experience, :ww, :us, :k, :odp, :zr, :intelligence, :sw, :ogd, :a, :hp, :s, :wt, :sz, :mag, :po, :pp, :race_id)
    end
    
    def set_main_parameters
      if @character.race_id == 2
        set_parameters_krasnolud
      else
      @character.ww = roll(10,2) + 20
      @character.us = roll(10,2) + 20
      @character.k = roll(10,2) + 20
      @character.odp = roll(10,2) + 20
      @character.zr = roll(10,2) + 20
      @character.intelligence = roll(10,2) + 20
      @character.sw = roll(10,2) + 20
      @character.ogd = roll(10,2) + 20
      @character.a = 1
      @character.hp = roll(4,1) + 9
      end
    end
    
    def set_secondary_parameters
      @character.s = @character.k / 10
      @character.wt = @character.odp / 10
      if @character.race_id == 2
        @character.sz = 3
      else
        @character.sz = 4
      end
      @character.mag = 0
      @character.po = 0
      @character.pp = roll(2,1) + 1
    end
    
    def set_parameters_krasnolud
      @character.ww = roll(10,2) + 30
      @character.us = roll(10,2) + 20
      @character.k = roll(10,2) + 20
      @character.odp = roll(10,2) + 30
      @character.zr = roll(10,2) + 10
      @character.intelligence = roll(10,2) + 20
      @character.sw = roll(10,2) + 20
      @character.ogd = roll(10,2) + 10
      @character.a = 1
      @character.hp = roll(4,1) + 10
    end
    
    def roll(sides, number=1)
      roll_array = []
      number.times do
        roll_value = rand(sides) + 1
        roll_array << roll_value
      end
      total = 0
      roll_array.each do |roll|
        new_total = total + roll
        total = new_total
      end
      total
    end
end
