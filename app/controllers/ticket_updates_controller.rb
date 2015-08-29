class TicketUpdatesController < ApplicationController
  before_action :set_ticket_update, only: [:show, :edit, :update, :destroy]

  # GET /ticket_updates
  # GET /ticket_updates.json
  def index
    @ticket_updates = TicketUpdate.all
  end

  # GET /ticket_updates/1
  # GET /ticket_updates/1.json
  def show
  end

  # GET /ticket_updates/new
  def new
    @ticket_update = TicketUpdate.new
  end

  # GET /ticket_updates/1/edit
  def edit
  end

  # POST /ticket_updates
  # POST /ticket_updates.json
  def create
    @ticket_update = TicketUpdate.new(ticket_update_params)

    respond_to do |format|
      if @ticket_update.save
        format.html { redirect_to @ticket_update, notice: 'Ticket update was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_update }
      else
        format.html { render :new }
        format.json { render json: @ticket_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_updates/1
  # PATCH/PUT /ticket_updates/1.json
  def update
    respond_to do |format|
      if @ticket_update.update(ticket_update_params)
        format.html { redirect_to @ticket_update, notice: 'Ticket update was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_update }
      else
        format.html { render :edit }
        format.json { render json: @ticket_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_updates/1
  # DELETE /ticket_updates/1.json
  def destroy
    @ticket_update.destroy
    respond_to do |format|
      format.html { redirect_to ticket_updates_url, notice: 'Ticket update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_update
      @ticket_update = TicketUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_update_params
      params.require(:ticket_update).permit(:title, :desc, :Ticket_id, :User_id, :AssignedUser_id, :State_id, :Priority_id)
    end
end
