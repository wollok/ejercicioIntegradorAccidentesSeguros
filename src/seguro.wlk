class Seguro {
	method cuantoPagaAseguradora(siniestro,vehiculo) {
		return siniestro.costoTotal() - self.cuantoPagaVehiculo(siniestro,vehiculo)
	}
	method cuantoPagaVehiculo(siniestro,vehiculo)

}

object seguroTodoRiesgo inherits Seguro{
	
	override method cuantoPagaVehiculo(siniestro,vehiculo){
		if (!siniestro.interviene(vehiculo))
			throw new Exception("El vehiculo no participo del siniestro")
		return 0
	}
}

object seguroTerceros inherits Seguro{
	
	override method cuantoPagaVehiculo(siniestro,vehiculo){
		return siniestro.costoVehiculo(vehiculo)
	}

}
