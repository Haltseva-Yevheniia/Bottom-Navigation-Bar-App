import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bottom_navigation_bar_app/components/country_item.dart';

class WidgetsPage extends StatefulWidget {
  const WidgetsPage({super.key});

  @override
  State<WidgetsPage> createState() => _WidgetsPageState();
}

class _WidgetsPageState extends State<WidgetsPage> {
  String nativeCountry = '';
  TextEditingController textController = TextEditingController();

  Widget getButtonYes(String country) {
    return ElevatedButton(
        style: ButtonStyle(
            //backgroundColor: Color(0xFFF06488),
            ),
        onPressed: () {
          showMessage(context, country);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Icon(Icons.next_plan_rounded),
            Text('YES'),
          ],
        ));
  }

  Widget getButtonNo() {
    return ElevatedButton(
      style: ButtonStyle(
          //backgroundColor: Color(0xFFF06488),
          ),
      onPressed: () {
        insertCity(context);
      },
      child: Text('No'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white60,
            border: Border.all(width: 1,color: Color(0xFF565656)),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(countries[index].photo),
              ),
              Text(countries[index].name),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Is it your country of birth?\n Press the button'),
              ),
              getButtonYes(countries[index].name),
              getButtonNo(),
            ],
          ),
        );
      },
    );
  }

  Future<AlertDialog?> showMessage(BuildContext context, String country) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Your native country is $country'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK')),
            ],
          );
        });
  }

  Future<AlertDialog?> insertCity(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Let\'s find out your native country'),
            content: TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Enter your native country',
                prefixIcon: Icon(
                  Icons.location_city_outlined,
                  color: Colors.blue[800],
                ),
                label: Text('Country'),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    showMessage(context, textController.text);
                    textController.clear();
                  },
                  child: Text('OK')),
            ],
          );
        });
  }
}
