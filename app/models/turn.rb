class Turn < ApplicationRecord
  belongs_to :user
  has_many :turn_resources
  has_many :resources, through: :turn_resources

  validates :start_date, presence: true
  validates :end_time, presence: true

  validate :controlar_que_un_recurso_no_esta_asociado_a_un_turno_en_ese_horario
  validate :controlar_fecha_de_fin_mayor_a_fecha_de_inicio

    def controlar_que_un_recurso_no_esta_asociado_a_un_turno_en_ese_horario
      if self.resources.length > 0
          self.resources.each do |recurso|
              Turn.all.each do |turno|
                    turno.resources.each do |recurso_turno|
                      if recurso_turno.name == recurso.name
                        if self.start_date >= turno.end_time || self.end_time <= turno.start_date
                            puts "devuelve true"
                            return true
                        else
                          puts "devuelve false"
                          return false
                        end
                      end
                    end
              end
          end
      else
          errors.add(:base, "No se han seleccionado recursos")
          return false
      end
    end


    def controlar_fecha_de_fin_mayor_a_fecha_de_inicio
      if self.start_date > self.end_time
        return false
      else
        return true
      end
    end
end
