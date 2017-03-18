class ResourceTransactionsController < ApplicationController
  before_action :set_resource_transaction, only: [:show, :edit, :update, :destroy]

  # GET /resource_transactions
  # GET /resource_transactions.json
  def index
    @resource_transactions = ResourceTransaction.all
  end

  # GET /resource_transactions/1
  # GET /resource_transactions/1.json
  def show
  end

  # GET /resource_transactions/new
  def new
    @resource_transaction = ResourceTransaction.new
  end

  # GET /resource_transactions/1/edit
  def edit
  end

  # POST /resource_transactions
  # POST /resource_transactions.json
  def create
    @resource_transaction = ResourceTransaction.new(resource_transaction_params)

    respond_to do |format|
      if @resource_transaction.save
        format.html { redirect_to @resource_transaction, notice: 'Resource transaction was successfully created.' }
        format.json { render :show, status: :created, location: @resource_transaction }
      else
        format.html { render :new }
        format.json { render json: @resource_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_transactions/1
  # PATCH/PUT /resource_transactions/1.json
  def update
    respond_to do |format|
      if @resource_transaction.update(resource_transaction_params)
        format.html { redirect_to @resource_transaction, notice: 'Resource transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource_transaction }
      else
        format.html { render :edit }
        format.json { render json: @resource_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_transactions/1
  # DELETE /resource_transactions/1.json
  def destroy
    @resource_transaction.destroy
    respond_to do |format|
      format.html { redirect_to resource_transactions_url, notice: 'Resource transaction was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_transaction
      @resource_transaction = ResourceTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_transaction_params
      params.require(:resource_transaction).permit(:ResourceTransaction)
    end
end
