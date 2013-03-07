Naive Bayes Classifier
========================


#Description:

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
   
  
When test.dat is read in, the algorithm will make a conclusion as to whether the following scenarios are probable (YES), or 
improbable (NO).

    Sunny       Hot     High        Weak
    Sunny       Hot     High        Strong
    Overcast    Hot     High        Weak

This algorithm is also very popular in spam filters.

Output:
=======
    Tacuma Solomon
    @02580808
    Machine Learning - Naive Bayes Algorithm

    No
    No
    Yes
