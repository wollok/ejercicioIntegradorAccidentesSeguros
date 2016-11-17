class Siniestro {
	var danios
	
	constructor(ds) {
		danios = ds		
	}
	
	method costoTotal() {
		return danios.sum({ danio=> danio.costo()})
	}
	
	method costoVehiculo(vehiculo) {
		if (!self.interviene(vehiculo))
			throw new Exception("El vehiculo no participo del siniestro")
		return danios.find({danio=> danio.elemento()==vehiculo}).costo() 
	}	
	method interviene(vehiculo) {
		return danios.any({danio=> danio.elemento()==vehiculo})
	}
}

class Danio{
	var elemento
	var costo
	
	constructor(elem, cto) {
		elemento = elem
		costo = cto
	}
	
	method costo() { return costo }
	
	method elemento() {	return elemento }

}