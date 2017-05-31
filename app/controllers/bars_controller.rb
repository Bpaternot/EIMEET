class BarsController < ApplicationController
  before_action :set_bar, only: [ :show, :edit, :update, :destroy ]

  def index
    @bars = policy_scope(Bar)

    @hash = Gmaps4rails.build_markers(@bars) do |bar, marker|
      marker.lat bar.latitude
      marker.lng bar.longitude
      # marker.infowindow render_to_string(partial: "/bars/map_box", locals: { bar: bar })
    end
  end

  def show
    @tournament = Tournament.new()
  end

  def new
    @bar = Bar.new()
  end

  def create
    @bar = Bar.new(bar_params)
    if @bar.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bar.update(bar_params)
    if @bar.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @bar.destroy
    redirect_to root_path
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
    authorize(@bar)
  end

  def bar_params
    params.require(:bar).permit(:address, :name, :tv_number, :tournament_size, :phone_number, :description, :offers)
  end
end



