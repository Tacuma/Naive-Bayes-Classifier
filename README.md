
Naive Bayes Classifier
========================


Description:
============
This program uses Naive bayes to calculate whether a given weather scenario will occur, given the data set
in the file "train.dat" as reference: 

Sunny       Hot     High        Weak        No
Sunny       Hot     High        Strong      No
Overcast    Hot     High        Weak        Yes
Rain        Mild    High        Weak        Yes
Rain        Cool    Normal      Weak        Yes
Rain        Cool    Normal      Strong      No
Overcast    Cool    Normal      Strong      Yes
Sunny       Mild    High        Weak        No
Sunny       Cool    Normal      Weak        Yes
Rain        Mild    Normal      Weak        Yes
Sunny       Mild    Normal      Strong      Yes
Overcast    Mild    High        Strong      Yes
Overcast    Hot     Normal      Weak        Yes
Rain        Mild    High        Strong      No


When test.dat is read in, the algorithm will make a conclusion as to whether scenario is probable (YES), or 
improbable (NO).

Sunny       Hot     High        Weak
Sunny       Hot     High        Strong
Overcast    Hot     High        Weak

This algoritm is also very popular in spam filters.

Output:
=======
This program sums up the first N elements of an array (N<=10).
Array = [23, 45, 12, 67, 34, 90, 1, 75, 3, 6]

Enter an integer between  1 and 10: 25
Error. Integer is out of range.

Enter an integer between  1 and 10: -1
Error. Integer is out of range.

Enter an integer between  1 and 10: 5

Total of first 5 elements: 181


() Code by Tacuma Solomon
() Not for Redistribution or Reuse.

Press any key to continue . . .