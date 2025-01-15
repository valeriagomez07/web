package es.cie.repository;

import java.util.ArrayList;
import java.util.List;

import es.cie.negocio.Libro;

public class LibroRepository {
	
	private static List<Libro> lista= new ArrayList<Libro>();
	
	static {
		lista.add(new Libro("1","Java,","pepe",200));
		lista.add(new Libro("2","Jphpava,","juan",100));
	}
public List<Libro> buscarTodos() {
	return lista;
}
}
