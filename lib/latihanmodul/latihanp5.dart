import 'package:flutter/material.dart';

class Pertemuan5 extends StatefulWidget {
  const Pertemuan5({super.key});

  @override
  State<Pertemuan5> createState() => _Pertemuan5State();
}

class _Pertemuan5State extends State<Pertemuan5> {
  bool switchValue = false;
  String selectedRadio = '';
  bool olahraga = false;
  bool seni = false;
  String _name = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pertemuan 5'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(labelText: 'Masukan Nama'),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Jenis Kelamin : '),
                Radio(
                    value: 'Laki Laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('Laki Laki'),
                Radio(
                    value: 'Perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    }),
                Text('Perempuan'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('Hobi :'),
            CheckboxListTile(
                title: Text('olahraga'),
                value: olahraga,
                onChanged: (value) {
                  setState(() {
                    olahraga = value!;
                  });
                }),
            CheckboxListTile(
                title: Text('seni'),
                value: seni,
                onChanged: (value) {
                  setState(() {
                    seni = value!;
                  });
                }),
            SizedBox(
              height: 20,
            ),
            SwitchListTile(
                title: Text('Lulus'),
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
