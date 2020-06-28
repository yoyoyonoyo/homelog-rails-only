class ParisesController < Users::ApplicationController
  before_action :set_parise, only: [:show, :edit, :update, :destroy]

  # GET /parises
  # GET /parises.json
  def index
    @parises = current_user.parises
    @user = User.includes(:likes).find(current_user.id)
    @like = Like.new
    @randam = Parise.all.order("RAND()").limit(5)
  end

  # POST /parises
  # POST /parises.json
  def create
    @parise = Parise.new(parise_params)

    respond_to do |format|
      if @parise.save
        format.html { redirect_to @parise, notice: 'Parise was successfully created.' }
        format.json { render :show, status: :created, location: @parise }
      else
        format.html { render :new }
        format.json { render json: @parise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parises/1
  # PATCH/PUT /parises/1.json
  def update
    respond_to do |format|
      if @parise.update(parise_params)
        format.html { redirect_to @parise, notice: 'Parise was successfully updated.' }
        format.json { render :show, status: :ok, location: @parise }
      else
        format.html { render :edit }
        format.json { render json: @parise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parises/1
  # DELETE /parises/1.json
  def destroy
    @parise.destroy
    respond_to do |format|
      format.html { redirect_to parises_url, notice: 'Parise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parise
      @parise = Parise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parise_params
      params.fetch(:parise, {})
    end
end
