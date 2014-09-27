class MailsController < ApplicationController
  before_action :set_mail, only: [:show, :edit, :update, :destroy]

  # GET /mails
  # GET /mails.json
  def index
    @mails = Mail.all
  end

  # GET /mails/1
  # GET /mails/1.json
  def show
  end

  # GET /mails/new
  def new
    @mail = Mail.new
  end

  # GET /mails/1/edit
  def edit
  end

  # POST /mails
  # POST /mails.json
  def create
    @mail = Mail.new(mail_params)

    respond_to do |format|
      if @mail.save
        format.html { redirect_to @mail, notice: 'Mail was successfully sent' }
        format.json { render action: 'show', status: :created, location: @mail }
      else
        format.html { render action: 'new' }
        format.json { render json: @mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mails/1
  # PATCH/PUT /mails/1.json
  def update
    respond_to do |format|
      if @mail.update(mail_params)
        format.html { redirect_to @mail, notice: 'Mail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mails/1
  # DELETE /mails/1.json
  def destroy
    @mail.destroy
    respond_to do |format|
      format.html { redirect_to mails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail
      @mail = Mail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_params
      params.require(:mail).permit(:from, :to, :subject, :description, :timestamp)
    end
end
