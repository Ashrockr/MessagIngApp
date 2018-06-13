package com.comp.messaging.messagingApp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ReadWriteFile {
	static File file = new File("number.txt");

	public List<String> getMobileNumber() {
		List<String> numberList = new ArrayList<String>();
		String number = null;
		try {
			FileReader fileReader = new FileReader(file);
			BufferedReader bufferedReader = new BufferedReader(fileReader);

			while ((number = bufferedReader.readLine()) != null) {
				numberList.add(number);
			}
			bufferedReader.close();
		} catch (FileNotFoundException e) {
			System.err.println("File Not FOUND");
		} catch (IOException e) {
			System.err.println("Error while reading");
		}

		return numberList;
	}

	public boolean addMobileNumber(String number) {
		try {
			FileWriter fileWriter = new FileWriter(file,true);

			BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);

			bufferedWriter.write(number);
			bufferedWriter.newLine();
			bufferedWriter.close();
			
		} catch (IOException ex) {
			System.out.println("Error writing to file '" + file.getName() + "'");
			return false;
		}
		return true;
	}
}
