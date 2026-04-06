//Escribir aqui los objetos
object galvan{
    var sueldo = 15000
    var dinero = 0
    var deuda = 0
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
   
   method dinero(_dinero){
    return _dinero
   }
   method deuda(_deuda){
        return _deuda
    }
    method sueldo(){
        return sueldo
    }
    method recibirSueldo(){
        dinero = dinero + self.sueldo()
        self.pagarDeuda()
    }
    method gastar(cantidad){
        if (dinero >= cantidad){
             dinero = dinero - cantidad
        }
        else{
            deuda = deuda + cantidad
        }
    }
    method pagarDeuda(){
        if (deuda <= dinero){
        deuda = deuda - dinero
        dinero = dinero - deuda
        }
    }
    
}

object baigorria{
    var cantEmpanadasVendidas = 0
    var totalCobrado = 0
    method sueldo(){
        return 15 * cantEmpanadasVendidas
    }
    method totalCobrado(){
        return totalCobrado
    }
    method vender(cantEmpanadas){
        cantEmpanadasVendidas = cantEmpanadasVendidas + cantEmpanadas
    }
    method recibirSueldo(){
        totalCobrado = totalCobrado + self.sueldo()
        cantEmpanadasVendidas = 0
    }
}
object gimenez{
    var fondo = 300000
    
    method fondo(){
        return fondo
    }
    method pagarSueldo(empleado){
        fondo = fondo - empleado.sueldo()
        empleado.recibirSueldo()
    }

}