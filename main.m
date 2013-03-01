#Tacuma Solomon
#@02580808
#Machine Learning - Naive Bayes Algorithm
#2/5/2011 Date of Completion

disp("")
disp("Tacuma Solomon")
disp("@02580808")
disp("Machine Learning - Naive Bayes Algorithm")
disp("")
	
data = dlmread("train.dat",",");    		#Provides dimension information on the train.dat file
data2 = dlmread("test.dat",",");    		#Provieds dimension information on the test.dat file

#disp(data);
#disp("");
#disp(data2);

fid = fopen("train.dat");      	 		#Opens train.dat
for i=1:rows(data);				#for all rows of train.dat
  txt = fgetl(fid);				#Reads in information per row of the file
  A(i,:) = strsplit(txt,",",false); 		#Splits each line into a cell matrix A of strings
end
fclose(fid);					#Closes train.dat

fid = fopen("test.dat");			#Opens test.dat
for i=1:rows(data2)				#for all rows of train.dat
   txt = fgetl(fid);				#Reads in information per row of the file
   B(i,:) = strsplit(txt,",",false);		#Splits each line into a cell matrix B of strings
end
fclose(fid);									#Closes test.dat
 
for p = 1:rows(B)								# Loop For all the rows of Matrix B containing the test cases,
	YesNoProb = {0,0};							# Creates a matrix to hold the probabilities for Yes and No
	YesOrNo = {"Yes","No"};							# String matrix holding the strings "Yes" and "No"
	for h=1:columns(YesOrNo)						# Iterating twice for the yes and the no probability for each test case
		for l= 1:columns(B)
			Prob = {1:l}; 				                 # Creates a matrix holding the probabilities of each word per line
		end 						
		for i=1:columns(B)						 # Loop Calculateing each probability of each word per line
			count = 0;                             			 # Counter for (Selected Word) and "Yes" appearances
			count2 = 0;                            			 # Counter for "Yes" appearances
			for j=1:rows(A)						 # Loop iterating each row in the train.dat file, collecting the counts of each (Selected Word)
				z = strcmp(B{p,i},A{j,i});             		 # Compares (Selected Word) for matches in the train.dat array
				z2 = strcmp(YesOrNo{1,h},A{j,columns(A)});   	 # This counts the number of times "Yes/No" appears
				z=z+z2;
				if (z == 2) 					 #Increments count IF both (Selected Word) and "Yes/No" are encountered
				  count=count+1;
				endif
				if (z2 == 1)					 # Increments count IF Yes/No appears
				  count2=count2+1;
				endif
			end
			Prob{1,i} =  (count/count2);		    		 # Calculates the probablility of (Selected Word) being "Yes/No"
			if (Prob{1,i} == 0)					 # If (Selected Word) has no matches, IE. prob. is 0, automatically assign probability to 0.1
				Prob{1,i} = 0.1 ;
			endif
		end		
		probyesno = count2/rows(A);					 # Calculates the probability(Yes/No)" 	
		calcprob = 1;
			for k = 1:columns(Prob)
				calcprob = (calcprob * Prob{1,k}); 		 # Loop multiplying the probabilities of each word
			end
		YesNoProb{1,h} = calcprob * probyesno;				 # Calculates the entire Yes/No probability of the test line 
	end
    if (YesNoProb{1,1} > YesNoProb{1,2})					 # If Yes probablility is greater than No probability
		disp("Yes");							 # Diisplay "Yes"
		else								 # Else,
		disp("No");							 # Display "No"
    endif
	
end										 # End Loop

disp("")
disp("")