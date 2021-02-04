echo "Enter the Number of Fibonacci series values needed : "
read N                                            # Input number N is read from User.
a=0 											  # Start of series
b=1                                               # Second number of series
i=0 											  # Iterator variable
echo "The Fibonacci series is : " 				  # Prints out statement to enclose the Fibonacci series Output

while [ $i -lt $N ]                               # While loop, as long as i is lesser than Input N. 
do
    echo -n "$a "                                 # Prints the numbers in the series. ( "-n" eliminates trailing NewLine)
	fn=$((a + b))                                 # a and b are added to continue the series.
	a=$b                                          # a is equated to b to further the series
	b=$fn                                         # b becomes the sum of a and itself.
	((i++))                                       # iterator i is incremented.
done
echo ""                                           # New line to beautify the print.