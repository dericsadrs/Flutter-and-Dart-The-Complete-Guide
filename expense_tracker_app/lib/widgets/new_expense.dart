import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _amountController = TextEditingController();
  final _expenseTitleController = TextEditingController();

  void _presentDatePicker() {
      final dateNow = DateTime.now();
      final dateFirst = DateTime(dateNow.year - 1, dateNow.month, dateNow.day);
      showDatePicker(context: context, firstDate: dateFirst, lastDate: dateNow);
    }

  @override
  void dispose() {
    _expenseTitleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _expenseTitleController,
            maxLength: 50,
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),

         Row(children: [
          Expanded(child: TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: '\$ ',
              labelText: 'Amount',
            ),
          ),),
         Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
            Text("Selected Date"),
            IconButton(
              onPressed: _presentDatePicker, 
              icon: const Icon(Icons.calendar_month))
             ],))
          ],),

         

          Row(
            children: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text("Cancel")),
              ElevatedButton(
                onPressed: () {
                  print(_expenseTitleController.text);
                },
                child: const Text("Save Expense"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}