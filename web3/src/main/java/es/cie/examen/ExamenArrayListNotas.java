package es.cie.examen;

import java.util.ArrayList;

public class ExamenArrayListNotas {
	
	 public static void main(String[] args) {
	 ArrayList<Integer> notas = new ArrayList<Integer>();

		notas.add(0);
		notas.add(8);
		notas.add(2);
		notas.add(4);
		notas.add(4);
		notas.add(0);
		notas.add(8);
		notas.add(7);


		int suma=0;
		int contador=0;

		for (int nota: notas) {
				if (nota >=5) 
					suma+=nota;
				contador++;
			} 
		if (contador>0) {
			double media=(double)suma/contador;
			System.out.println("La media de las notas aprobada es: "+media);
		} 
			


}
}
