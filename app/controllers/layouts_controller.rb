class LayoutsController < ApplicationController

  # GET /layouts
  # GET /layouts.json
  def index
    if Store.all.length == 0
      redirect_to new_store_path
    end
    @image = Image.new()
  end

  # GET /layouts/1
  # GET /layouts/1.json
  def show
  end

  # GET /layouts/new
  def new
    @layout = Layout.new
  end

  # GET /layouts/1/edit
  def edit
    if @layout.update(layout_params)
      flash[:notice] = 'Layout was successfully updated.'
      redirect_to(:back)
    end
  end

  # POST /layouts
  # POST /layouts.json
  def create
    @layout = Layout.new(layout_params)

    respond_to do |format|
      if @layout.save
        format.html { redirect_to @layout, notice: 'Layout was successfully created.' }
        format.json { render :show, status: :created, location: @layout }
      else
        format.html { render :new }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /layouts/1
  # PATCH/PUT /layouts/1.json
  def update
    @layout.update(layout_params)
    redirect_to(:back)
  end

  # DELETE /layouts/1
  # DELETE /layouts/1.json
  def destroy
    @layout.destroy
    respond_to do |format|
      format.html { redirect_to layouts_url, notice: 'Layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def layout_params
      params.require(:layout).permit(:store_copy, :store_image, :css_id, :store_id)
    end
end
