package com.maxi.model;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;


public class ListaTemas {
	
	private List<Tema>listaDeTemas = new ArrayList<Tema>();
	
	public ListaTemas(){
		
		String directorio = "C://Users//jalputer//Documents//GitHub//Aplicacion//Aplicacion//Mp3Web//src//main//webapp//mp3";
		
		File file = new File(directorio);
		File[] temas = file.listFiles();
		
		for(int i=0;i<temas.length;i++){
			
			Tema tema = new Tema(i,temas[i].getName());
			listaDeTemas.add(tema);
		}
	}

	public List<Tema> getListaDeTemas() {
		return listaDeTemas;
	}
	
	

}
