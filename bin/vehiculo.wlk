
class Vehiculo {
	
	var poliza
	var aseguradora
	
	constructor(poli, aseg) {
		poliza = poli
		aseguradora = aseg
	}
	
	method cuantoPagaAseguradora(siniestro) {
		return poliza.cuantoPagaAseguradora(siniestro,self)
	}
	method cuantoPagaVehiculo(siniestro){
		return poliza.cuantoPagaVehiculo(siniestro,self)
	}
}