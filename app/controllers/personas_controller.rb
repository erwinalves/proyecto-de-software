class PersonasController < ApplicationController
before_action :set_persona, only: [:show, :edit, :update, :destroy]

    def index
     @personas = Persona.paginate(:page => params[:page], :per_page => 10)
    end

    # GET Personas/id
    def show
    end

    def new
     @persona = Persona.new
    end

    def create
     @persona = Persona.new(persona_params)
      respond_to do |format|
        if@persona.save
          format.html{redirect_to @persona, notice: 'Fue creado una Persona con Exito.'}
        else
          forma.html{render :new}
        end
      end

    end

    def edit
    end

    def update
      respond_to do |format|
        if @persona.update(persona_params)
          format.html{redirect_to @persona, notice: "Persona fue editado con exito"}
        else
          format.html{render :edit}
        end
      end
    end


    def destroy
     @persona.destroy
      respond_to do |format|
        format.html{ redirect_to personas_url, notice: 'Persona eliminado con Exito.' }
      end
    end



  private

    def set_persona
     @persona = Persona.find(params[:id])
    end

    def persona_params
      params.require(:persona).permit(:nombre,:rol,:rut,:telefono,:hrs_trabajadas)
    end

end
