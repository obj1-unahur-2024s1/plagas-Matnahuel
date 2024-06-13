import archivo.*
import Plaga.*

class Barrio{
	const elementoBueno=[]
	const elementoMalo = []
	method agregarElemento(unElemento){
		if(unElemento.esBueno()){
			elementoBueno.add(unElemento)
		}else elementoMalo.add(unElemento)
	}
	method esCopado(){
		return elementoBueno.size() > elementoMalo.size()
	}
}