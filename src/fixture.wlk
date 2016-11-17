import seguro.*
import vehiculo.*
import superintendencia.*
import siniestro.*

object fixture {

	const fitito = new Vehiculo(seguroTerceros,"Soruges")
	const bondi = new Vehiculo(seguroTodoRiesgo, "Chano")
	const moto = new Vehiculo(seguroTerceros, "Que Dios se lo pague")
	const choque = new Siniestro([new Danio(fitito, 20000),new Danio(bondi,500), new Danio(moto,20),new Danio("semaforo",1000),new Danio("peaton",2000)])
	const vuelco = new Siniestro([new Danio(fitito, 1000),new Danio("calle",300)])

	method choque() {return choque}
	method vuelco() {return vuelco}
	method moto () {return moto }
	method bondi () {return bondi }
	method fitito () {return fitito }

}