package com.jsp.wordCounter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WordCounter 
{

	@RequestMapping("/countWords")
	public String findCountOFWords(Model model, String paragraphData)
	{
		
		String[] array = paragraphData.split(" ");
		
		int wordCount = 0;
		for(int i =0;i<array.length;i++)
		{
			if(!array[i].isEmpty())
				wordCount++;
		}
		
		model.addAttribute("countOfCharacters", paragraphData.length());
		model.addAttribute("countOfWords" , wordCount);
		model.addAttribute("paragraph", paragraphData);
		
		return "index.jsp";
	}
}
