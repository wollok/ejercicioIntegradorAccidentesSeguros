
object superintendencia {
	var siniestros = []
	
	method agregarSiniestro(siniestro) {
		siniestros.add(siniestro)
	}
		
	method pagoTotalDelVehiculo(vehiculo) {
		return self.siniestrosDelVehiculo(vehiculo).sum({siniestro => vehiculo.cuantoPagaVehiculo(siniestro)})
	}
	
	method siniestrosDelVehiculo(vehiculo) {
		return siniestros.filter({ siniestro => siniestro.interviene(vehiculo)})
	}
	
}