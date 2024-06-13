import Barrio.*
import archivo.*

class PlagaDeCucaracha{
	var property poblacion
	var property pesoPromedio
	method nivelDeDanio(){
		return poblacion / 2
	}
	method transmiteEnfermedades(){
		return poblacion >= 10 and pesoPromedio >= 10
	}
	method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.1)
		pesoPromedio = pesoPromedio + 2
	}
	method atacarElemento(unElemento){
		self.efectoDeAtaque()
		unElemento.efectoDeAtaque(self)
	}
}

class PlagaDePulga{
	var property poblacion
	method nivelDeDanio(){
		return poblacion *2
	}
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.1)
	}
	method atacarElemento(unElemento){
		self.efectoDeAtaque()
		unElemento.efectoDeAtaque(self)
	}
}

class PlagaDeGarrapata inherits PlagaDePulga{
	override method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.2)
	}
}

class PlagaDeMosquito{
	var property poblacion
	method nivelDeDanio(){
		return poblacion
	}
	method transmiteEnfermedades(){
		return poblacion >= 10 and poblacion %3 == 0
	}
	method efectoDeAtaque(){
		poblacion = poblacion + (poblacion * 0.1)
	}
	method atacarElemento(unElemento){
		self.efectoDeAtaque()
		unElemento.efectoDeAtaque(self)
	}
}

