class RelatedDatesController < ApplicationController
  before_action :set_related_date, only: [:show, :edit, :update, :destroy]

  # GET /related_dates
  # GET /related_dates.json
  def index
    @related_dates = RelatedDate.all
  end

  # GET /related_dates/1
  # GET /related_dates/1.json
  def show
  end

  # GET /related_dates/new
  def new
    @related_date = RelatedDate.new
  end

  # GET /related_dates/1/edit
  def edit
  end

  # POST /related_dates
  # POST /related_dates.json
  def create
    #@related_date = RelatedDate.new(related_date_params)

    respond_to do |format|
      if @related_date.save
        format.html { redirect_to @related_date, notice: 'Related date was successfully created.' }
        format.json { render :show, status: :created, location: @related_date }
      else
        format.html { render :new }
        format.json { render json: @related_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /related_dates/1
  # PATCH/PUT /related_dates/1.json
  def update
    respond_to do |format|
      if @related_date.update(related_date_params)
        format.html { redirect_to @related_date, notice: 'Related date was successfully updated.' }
        format.json { render :show, status: :ok, location: @related_date }
      else
        format.html { render :edit }
        format.json { render json: @related_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /related_dates/1
  # DELETE /related_dates/1.json
  def destroy
    @related_date.destroy
    respond_to do |format|
      format.html { redirect_to related_dates_url, notice: 'Related date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_related_date
      @related_date = RelatedDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def related_date_params
      params.require(:related_date).permit(:Create_Date, :Open_Date, :Est_Closing_Date, :Escrow_Open_Date, :Prelim_Date, :Appraisal_Date, :Inspection_Date, :Generate_Closing_Instruction, :Order_Loan_Doc_Date, :Closing_Date, :Sch_To_Refine_Date)
    end
end
