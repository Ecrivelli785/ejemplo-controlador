class OrdenTrabajosController < ApplicationController
  before_action :set_orden_trabajo, only: [:show, :edit, :update, :destroy]

  # GET /orden_trabajos
  # GET /orden_trabajos.json
  def index
    @orden_trabajos = OrdenTrabajo.all.order('cliente ASC')
    respond_to do |format|
      format.html # index.html.erb
      format.js # index.js.erb
      format.json { render json: @orden_trabajos}
    end
  end

  # GET /orden_trabajos/1
  # GET /orden_trabajos/1.json
  def show
  end
  # GET /orden_trabajos/new
  def new
    @orden_trabajo = OrdenTrabajo.new
  end

  # GET /orden_trabajos/1/edit
  def edit
    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # POST /orden_trabajos
  # POST /orden_trabajos.json
  def create
    @orden_trabajo = OrdenTrabajo.new(orden_trabajo_params)

    respond_to do |format|
      if @orden_trabajo.save
        format.html { redirect_to @orden_trabajo, notice: 'Orden trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @orden_trabajo }
      else
        format.html { render :new }
        format.json { render json: @orden_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /orden_trabajos/1
  # PATCH/PUT /orden_trabajos/1.json
  def update
    respond_to do |format|
      if @orden_trabajo.update(orden_trabajo_params)
        format.html { redirect_to @orden_trabajo, notice: 'Orden trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: @orden_trabajo }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @orden_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end








  # DELETE /orden_trabajos/1
  # DELETE /orden_trabajos/1.json
  def destroy
    @orden_trabajo.destroy
    respond_to do |format|
      format.html { redirect_to orden_trabajos_url, notice: 'Orden trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


# ESTE SECTOR DEL CONTROLADOR ES PARA LAS DIFERENTES VIEWS DE IMPRESIÓN Y POST
# ------------------------------------------------------------------------
def digital
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def offset
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post1
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post2
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post3
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post4
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post5
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post6
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end

def post7
   @orden_trabajos = OrdenTrabajo.all.order('fecha_entrega ASC')
end
# ------------------------------------------------------------------------



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden_trabajo
      @orden_trabajo = OrdenTrabajo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orden_trabajo_params
      params.require(:orden_trabajo).permit(:cliente, :producto, :ot, :fecha_entrega, :observaciones, :post, :maquina)
    end
end
