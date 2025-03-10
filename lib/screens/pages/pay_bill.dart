import 'package:flutter/material.dart';

class PayTheBillPage extends StatefulWidget {
  const PayTheBillPage({super.key});

  @override
  _PayTheBillPageState createState() => _PayTheBillPageState();
}

class _PayTheBillPageState extends State<PayTheBillPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _billNumberController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  void _payBill() {
    if (_formKey.currentState!.validate()) {
      String billNumber = _billNumberController.text;
      String amount = _amountController.text;
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Paying $amount to bill number $billNumber')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay the Bill'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _billNumberController,
                decoration: const InputDecoration(labelText: 'Bill Number'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the bill number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _payBill,
                child: const Text('Pay Bill'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
