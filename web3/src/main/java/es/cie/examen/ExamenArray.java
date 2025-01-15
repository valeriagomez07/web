package es.cie.examen;

import java.util.ArrayList;

public class ExamenArray {

    public static void main(String[] args) {
        ArrayList<String> lista = new ArrayList<String>();

		lista.add("hola");
		lista.add("que");
		lista.add("tal");
        lista.add("estas");


		for (int i = lista.size()-1; i >=0; i--) {
			System.out.println(lista.get(i));
			
}

}

}