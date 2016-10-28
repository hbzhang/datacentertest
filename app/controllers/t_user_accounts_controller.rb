class TUserAccountsController < ApplicationController
  before_action :set_t_user_account, only: [:show, :edit, :update, :destroy]

  # GET /t_user_accounts
  # GET /t_user_accounts.json
  def index
    @t_user_accounts = TUserAccount.all
  end

  # GET /t_user_accounts/1
  # GET /t_user_accounts/1.json
  def show
  end

  # GET /t_user_accounts/new
  def new
    @t_user_account = TUserAccount.new
  end

  # GET /t_user_accounts/1/edit
  def edit
  end

  # POST /t_user_accounts
  # POST /t_user_accounts.json
  def create
    @t_user_account = TUserAccount.new(t_user_account_params)

    respond_to do |format|
      if @t_user_account.save
        format.html { redirect_to @t_user_account, notice: 'T user account was successfully created.' }
        format.json { render :show, status: :created, location: @t_user_account }
      else
        format.html { render :new }
        format.json { render json: @t_user_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_user_accounts/1
  # PATCH/PUT /t_user_accounts/1.json
  def update
    respond_to do |format|
      if @t_user_account.update(t_user_account_params)
        format.html { redirect_to @t_user_account, notice: 'T user account was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_user_account }
      else
        format.html { render :edit }
        format.json { render json: @t_user_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_user_accounts/1
  # DELETE /t_user_accounts/1.json
  def destroy
    @t_user_account.destroy
    respond_to do |format|
      format.html { redirect_to t_user_accounts_url, notice: 'T user account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_user_account
      @t_user_account = TUserAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_user_account_params
      params[:t_user_account]
    end
end
