class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  def index
    @users = User.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /productos/1
  # GET /productos/1.json
  def show
  end

  # GET /productos/new
  def new
    @user = Users.new
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario fue creado con exito.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Usuario fue editado con exito.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Usuario fue destruido.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :encrypted_password, :reset_password_token)
    end

end
