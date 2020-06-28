class DiariesController < Users::ApplicationController
  before_action :set_diary, only: [:show, :edit, :update, :destroy]

  # GET /diaries
  def index
    @diaries = current_user.diaries.includes([:parise,:genre])
  end

  # GET /diaries/new
  def new
    @diary = Diary.new
    @diary.build_genre
    @diary.build_parise(user_id: current_user.id)
  end

  # GET /diaries/1/edit
  def edit
  end

  # POST /diaries
  def create
    @diary = Diary.new(diary_params)
    @diary.save!
    if @diary.save
      flash[:success] = "投稿が完了しました！"
      redirect_to diaries_url
    else
      flash.now[:alert] = "投稿が失敗しました。"
      render :new
    end
  end

  # PATCH/PUT /diaries/1
  def update
    respond_to do |format|
      if @diary.update(diary_params)
        format.html { redirect_to diaries_path, notice: 'Diary was successfully updated.' }
      else
        format.html { render :index, notice: 'Diary was successfully updated.' }
      end
    end
  end

  # DELETE /diaries/1
  def destroy
    @diary.destroy
    respond_to do |format|
      format.html { redirect_to diaries_url, notice: 'Diary was successfully destroyed.' }
    end
  end

  private

  def set_diary
    @diary = Diary.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def diary_params
    params.require(:diary)[:parise_attributes][:user_id] = current_user.id
    params.require(:diary).permit(:content, :created_at, genre_attributes: [:id, :content,:diary_id] ,parise_attributes: [:id, :content, :diary_id, :user_id]).merge(user_id: current_user.id)
  end

end
