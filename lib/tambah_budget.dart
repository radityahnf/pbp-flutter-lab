import 'package:counter_7/drawer.dart';

import 'show_budget.dart';

import 'package:flutter/material.dart';
import 'main.dart';

class Budget {
  late String judul;
  late int nominal;
  late String pemasukan;
  late DateTime? dateTime;
  Budget(String judul, int nominal, String pemasukan, DateTime? dateTime) {
    this.judul = judul;
    this.nominal = nominal;
    this.pemasukan = pemasukan;
    this.dateTime = dateTime;
  }
  static List<Budget> budgetData = [];
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  List<String> jenisBudget = ['Pengeluaran', 'Pemasukan'];
  String _pemasukan = "Pengeluaran";
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: const ScfDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: Judul",
                    labelText: "Judul",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Judul tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nominal",
                    labelText: "Nominal",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _nominal = int.parse(value!);
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _nominal = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),
                      ).then(
                        (date) => setState(
                          () => _dateTime = date,
                        ),
                      );
                    },
                    icon: Icon(Icons.calendar_month)),
              ),
              DropdownButton(
                value: _pemasukan,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: jenisBudget.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _pemasukan = newValue!;
                  });
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Budget.budgetData
                          .add(new Budget(_judul, _nominal, _pemasukan, _dateTime));
                      for (var i = 0; i < Budget.budgetData.length; i++) {
                        print(Budget.budgetData[i].judul +
                            " " +
                            Budget.budgetData[i].nominal.toString());
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
