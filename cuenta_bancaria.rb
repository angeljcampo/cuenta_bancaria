class CuentaBancaria
  attr_accessor :nombre_de_usuario
  attr_reader :numero_cuenta, :vip

  def initialize(nombre_de_usuario,numero_cuenta, vip = 0)
    @nombre_de_usuario = nombre_de_usuario
    @vip = vip
    
    if numero_cuenta.digits.count == 8
      @numero_cuenta = numero_cuenta
    else
    raise RangeError.new('El numero de cuenta es incorrecto')
    end
  end

  def numero_de_cuenta
    if self.vip == 1
      "1-#{self.numero_cuenta}"
    else
      "0-#{self.numero_cuenta}"
    end
  end
end

