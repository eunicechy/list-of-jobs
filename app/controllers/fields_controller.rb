class FieldsController < ApiController
  before_action :set_field, only: [:show, :update, :destroy]

  # GET /fields
  def index
    @fields = Field.select("id,title").all

    render json: @fields.to_json
  end

  # GET /fields/id
  def show
    @fields= Field.find(params[:id])
    render json: @field.to_json(:include =>{:jobs =>{:only=>[:id,:description,:title,:link]}})
    end
  end

  # POST /fields
  def create
    @field = Field.new(field_params)

    if @field.save
      render json: @field, status: :created, location: @field
    else
      render json: @field.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fields/1
  def update
    if @field.update(field_params)
      render json: @field
    else
      render json: @field.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fields/1
  def destroy
    @field.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field
      @field = Field.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def field_params
      params.require(:field).permit(:title, :description, :steps, :source)
    end

