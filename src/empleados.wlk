object galvan {
	var property sueldo = 150000
	var property totalDinero = 0
	var property totalDeuda = 0
	
	method cobrarSueldo(){
		totalDinero += sueldo
		self.pagarDeudas()
	}
	method pagarDeudas(){
		const dineroInicial = totalDinero
		totalDinero = 0.max(totalDinero - totalDeuda)
		totalDeuda = 0.max(totalDeuda - dineroInicial)
	}
	method gastar(cuanto){totalDeuda += cuanto}
}

object baigorria{
	var cantidadVendidas = 0
	const montoPorEmpanada = 150
	var totalCobrado = 0
	
	method venderEmpanada(){cantidadVendidas += 1}
	method sueldo(){return (cantidadVendidas * montoPorEmpanada)}
	method cobrarSueldo(){totalCobrado += self.sueldo()}
}

object gimenez{
	var property dinero = 3000000
	
	method pagarA(empleado){
		dinero = dinero -= empleado.sueldo()
		
	}
}
