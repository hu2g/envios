'use strict';

app.controller('HomeController', function(HomeFactory){

	var vm = this;

	vm.customers = [];
	vm.countries = [];
	vm.regions = [];
	vm.discounts = [];

	

	let c = {
		code:"0000000",
		consumo:0,
		id_customer:0,
		name:"Visitante",
		phone:"00000000"
	}

	let cotizacion = "El valor es: ";

	let cotiza = {
		peso:0,
		ancho:0,
		alto:0,
		largo:0,
		destino: 0,
		cliente: 0
	}

	vm.cotizar = function(cotiza){
		console.log(cotiza);
		let tar = 0;
		let reg = "";
		let dest = "";
		let cli = "";
		let cons = 0;
		let desc = 0;
		//console.log(vm.countries);
		for (let c in vm.countries) {
			
			//console.log(c.id_country +"=="+ parseInt(cotiza.destino))
			if (c.id_country == parseInt(cotiza.destino)) {
				dest = c.name;
				for (let r in this.vm.regions) {
					if(c.region = r.id_region){
						reg = r.name;
						tar = r.tarifa;
						break;
					}
				}
				break;
			}
		}
		for (let c in this.customers) {
			if(c.id_customer == parseInt(cotiza.cliente)){
				cli = c.name;
				cons = c.consumo;
				for (let d in this.discounts) {
					if(cons >= d.min_level || cons <= d.min_level){
						desc = d.value;
						break;
					}
				}
				break;
			}
		}

		
		let val = operar(cotiza.peso, cotiza.alto, cotiza.largo, cotiza.ancho, tar, desc);
		this.cotizacion = "Cliente:"+cli+"\n"+
						  "Destino:"+dest+"\n"+
						  "Region:"+reg+"\n"+
						  "Tarifa: $ "+tar+"\n"+
						  "Descuento:"+(desc*100)+" %\n"+
						  "Total:"+val+"\n";
		console.log(this.cotizacion);
	}
	function operar(peso, alto, largo, ancho, tarifa, descuento){
		return (peso*tarifa) + 1.66*alto*largo*ancho - descuento*0.5*peso;
	}

	HomeFactory.getCustomers().then(function(data){
		console.log(data.data);
		vm.customers = data.data;
		vm.customers.push(c);
	});
	HomeFactory.getCountries().then(function(data){
		console.log(data.data);
		vm.countries = data.data;
	});
	HomeFactory.getRegions().then(function(data){
		console.log(data.data);
		vm.regions = data.data;
	});
	HomeFactory.getDiscounts().then(function(data){
		console.log(data.data);
		vm.discounts = data.data;
	});


});