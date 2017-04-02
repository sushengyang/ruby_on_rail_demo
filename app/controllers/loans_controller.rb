class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  # GET /loans.json
  def index
    @loans = Loan.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @loan = Loan.new
    @related_date = RelatedDate.new
    @borrower = Borrower.new
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)
    @related_date = RelatedDate.new(params[:id])
    @related_date = Borrower.new(params[:id])

    respond_to do |format|
      if @loan.save
        #format.html { redirect_to @loan, notice: 'Loan was successfully created.' }
        format.html { redirect_to action: "index", notice: 'Loan was successfully created.' }
        format.json { render action: "index", status: :created, location: @loan }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end

   
    #def loan_params
    #  params.require(:loan).permit(:id, related_date_attributes:[:id,:Create_Date,:Open_Date,:Est_Closing_Date, :Escrow_Open_Date, :Prelim_Date, :Appraisal_Date,:Inspection_Date,:Generate_Closing_Instruction,:Order_Loan_Doc_Date,:Closing_Date,:Sch_To_Refine_Date])
    #Xend 
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to action: "index", notice: 'Loan was successfully updated.' }
        format.json { render action: "index", status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:Loan_number, :Assistant, :Manager, :Processor, :Escrow, :Creator)
    end
end
