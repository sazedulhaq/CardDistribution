# CardDistribution
 
Backend (PHP):

Added a try-catch block to handle exceptions.

If an irregularity occurs (e.g., invalid input, shuffling failure), an exception is thrown, and the process terminates with the message "Irregularity occurred".

The shuffle function is checked for failure, and an exception is thrown if it fails.



Frontend (HTML + JavaScript/jQuery):

Added input validation to ensure the number of people is greater than 0.

If the AJAX request fails (e.g., server-side error), the message "Irregularity occurred" is displayed.


***Place the PHP script (header.php) and the HTML file in the same directory on your web server.



Time Spent
Backend (PHP): 30 minutes

Frontend (HTML + JavaScript/jQuery): 15 minutes

Testing and Debugging: 10 minutes

Documentation: 5 minutes

Total Time Spent: 60 minutes