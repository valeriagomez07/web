package es.cie.examen;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Scanner;

public class ExamenScaner {
	public static void main(String[] args) {

		 Scanner sc = new Scanner(System.in);

	        System.out.println("Introduce la fecha de tu nacimiento en formato dd/MM/yyyy");

	        String fechaIngresada = sc.nextLine();
	        SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");
	        
	        Calendar calendario=Calendar.getInstance();

	    	try {
	    	formateador.format(fechaIngresada);
			calendario.setTime(formateador.parse(fechaIngresada));
			int año=calendario.get(Calendar.YEAR);
			System.out.println("El año ingresado es: "+año);
			} catch (ParseException e) {
				System.out.println("El formato ingresado es incorrecto");
			}
			
		    sc.close();
	}
}
