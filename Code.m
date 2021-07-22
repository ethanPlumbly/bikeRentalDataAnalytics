X = SeoulBikeData;

X(X.FunctioningDay == "No",:) = []; %remove non functioning records
Y = normc(table2array(X(:,2))); %get rbc
X.Holiday = X.Holiday == "Holiday"; %binarise holiday field
X(:,[1,2,3,12,14])=[]; %remove seemingly useless values
X = normc(table2array(X));