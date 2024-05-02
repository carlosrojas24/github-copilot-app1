using System;
using System.Text.RegularExpressions;

class HelloWorld {
    static void Main() {
        Console.WriteLine("Hello, World!");

        //create a method that gets username and says hello 
        Console.WriteLine("What is your name?");
        string name = Console.ReadLine();
        Console.WriteLine("Hello, " + name + "!");
        
    }
}



string phoneNumber = "617-685-8899";
Regex regex = new Regex(@"\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}");
Match match = regex.Match(phoneNumber);

if (match.Success)
{
    Console.WriteLine("Matched phone number: " + match.Value);
}
else
{
    Console.WriteLine("No match found.");
}

