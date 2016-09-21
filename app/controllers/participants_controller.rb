class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :edit, :update, :destroy]
  before_action :set_message, only: [:new, :edit, :create, :update]

  # GET /participants
  # GET /participants.json
  def index
    redirect_to '/participants/new'
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    redirect_to '/participants/new'
  end

  # GET /participants/new
  def new
    @participant = Participant.new
  end

  # GET /participants/1/edit
  def edit
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)

    respond_to do |format|
      if @participant.save
        # format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
        format.html { redirect_to '/confirmation/thankyou'}
        # format.json { render :show, status: :created, location: @participant }
      else
        format.html { render :new }
        # format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participants/1
  # PATCH/PUT /participants/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to @participant, notice: 'Participant was successfully updated.' }
        # format.json { render :show, status: :ok, location: @participant }
      else
        format.html { render :edit }
        # format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    # @participant.destroy
    # respond_to do |format|
    #   format.html { redirect_to participants_url, notice: 'Participant was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

    def set_message
      messages = Participant::MESSAGES
      if params[:message_id] then @message = messages[ params[:message_id].to_i] end
      if !params[:message_id] then @message = messages.first end
      unless @message.blank?
        @headline = @message[0]
        @subhead = @message[1]
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:first_name, :last_name, :email, :company, :location, :job_title)
    end
end
