import Barrio.*
import Plaga.*

class Hogar {
	var property nivelDeMugre
	var property confort
	method esBueno(){
		return nivelDeMugre/2 <= confort * 0.5
	}
	method efectosDeAtaque(unaPlaga){
		nivelDeMugre  = unaPlaga.nivelDeDanio()
	}
}

class Huerta{
	var property capacidadProduccion 
	var nivel = 0
	method esBueno(){
		return capacidadProduccion > nivel
	}
	method efectosDeAtaque(unaPlaga){
		capacidadProduccion=  capacidadProduccion - (unaPlaga.nivelDeDanio()*0.1)
		if (unaPlaga.transmiteEnfermedades()){
			capacidadProduccion = capacidadProduccion - 10
		}
	}
}

class Mascota{
	var property nivelDeSalud
	method esBueno(){
		return nivelDeSalud > 250
	}
	method efectosDeAtaque(unaPlaga){
		if (unaPlaga.transmiteEnfermedades()){
			nivelDeSalud = nivelDeSalud - unaPlaga.nivelDeDanio()
		}
	}
}





