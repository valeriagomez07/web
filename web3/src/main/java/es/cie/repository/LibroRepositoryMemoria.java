package es.cie.repository;

import java.util.ArrayList;
import java.util.List;

import es.cie.negocio.Libro;

public class LibroRepositoryMemoria implements LibroRepository {
	
	private static List<Libro> lista= new ArrayList<Libro>();
	
	static {
		lista.add(new Libro("1","La riqueza que el dinero no puede comprar,","Robin Sharma",200));
		lista.add(new Libro("2","Conversaciones con Dios,","Nale Donald",200));
		lista.add(new Libro("3","Los secretos de una mente millonaria,","T. Harv Eker",100));
		lista.add(new Libro("4","De invisible a invensible,","Vilma Nuñez",180));
		lista.add(new Libro("5","Los virus no entran por los pies,","Lucia Galan",150));
		lista.add(new Libro("6","Manifiesto para los heroes de cada dia,","Robin Sharma",190));
		lista.add(new Libro("7","Piense y hagase rico,","Napoleon Hill",120));
		lista.add(new Libro("8","Habitos atomicos,","James Clear",140));
		
	}
@Override
public List<Libro> buscarTodos() {
	return lista;
}

@Override
public List<Libro> buscarPorTitulo(String titulo) {
	List <Libro> listaNueva= new ArrayList<Libro>();
	
	for (Libro l: lista) {
		String tituloLibro=l.getTitulo();
		if (tituloLibro.toLowerCase().contains(titulo.toLowerCase())) {
			listaNueva.add(l);
		}
	}
	return listaNueva;
	
	
}

@Override
public List<Libro> buscarPorAutor(String autor) {
	List <Libro> listaNueva= new ArrayList<Libro>();
	
	for (Libro l: lista) {
		String autorLibro=l.getAutor();
		if (autorLibro.toLowerCase().contains(autor.toLowerCase())) {
			listaNueva.add(l);
		}
	}
	return listaNueva;
	
	
}
}
