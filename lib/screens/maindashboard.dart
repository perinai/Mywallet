// Updated DashboardPage with centered buttons
import 'package:flutter/material.dart';
import 'sendmoney.dart';  // Importing the SendMoneyPage for navigation.
import 'paybills.dart';   // Importing the PayBillsPage for navigation.

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key}); // Constructor for the class with a unique key.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar displaying the title of the page.
      appBar: AppBar(
        title: const Text('Dashboard'), // Title displayed in the AppBar.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adds padding around the body.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the column.
          children: [
            const Text(
              'Hello, User!', // Greeting text.
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold, // Bold font for the greeting.
              ),
            ),
            const SizedBox(height: 20), // Adds space between widgets.

            // Account Balance Container.
            Container(
              padding: const EdgeInsets.all(16), // Adds padding inside the container.
              decoration: BoxDecoration(
                color: Colors.blueAccent, // Background color for the container.
                borderRadius: BorderRadius.circular(12), // Rounded corners for the container.
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the column.
                children: [
                  Text(
                    'Account Balance', // Label for account balance.
                    style: TextStyle(
                      color: Colors.white, // White color for the label.
                      fontSize: 18, // Font size for the label.
                    ),
                  ),
                  SizedBox(height: 10), // Adds space between label and balance.
                  Text(
                    '\$12,345.67', // Account balance amount.
                    style: TextStyle(
                      color: Colors.white, // White color for the balance.
                      fontSize: 32, // Font size for the balance amount.
                      fontWeight: FontWeight.bold, // Bold font for the balance amount.
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40), // Adds space after account balance.

            // Row to center the buttons horizontally.
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers buttons horizontally.
              children: [
                // Send Money Button.
                ElevatedButton(
                  onPressed: () {
                    // Navigates to the SendMoneyPage when pressed.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SendMoneyPage()),
                    );
                  },
                  child: const Text('Send Money'), // Button label.
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Padding inside the button.
                    textStyle: const TextStyle(fontSize: 18), // Text style for the button.
                  ),
                ),
                
                const SizedBox(width: 20), // Adds space between the buttons.

                // Pay Bills Button.
                ElevatedButton(
                  onPressed: () {
                    // Navigates to the PayBillsPage when pressed.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PayBillsPage()),
                    );
                  },
                  child: const Text('Pay Bills'), // Button label.
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Padding inside the button.
                    textStyle: const TextStyle(fontSize: 18), // Text style for the button.
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
