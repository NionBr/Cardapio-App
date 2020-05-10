import 'package:flutter/material.dart';

class ListOption extends StatefulWidget {
  @override
  _ListOptionState createState() => _ListOptionState();

  final String title, price;
  final Color checked;
  final Function() callbackFunction;

  ListOption({this.title, this.price, this.checked, this.callbackFunction});
}

class _ListOptionState extends State<ListOption> {

  bool check = false;
  int cont = 0;

  void onChange(bool value){
    setState(() {
      check = value;
    });
    if(check == true){
      setState(() {
        cont = 1;
      });
    }else{
      setState(() {
        cont = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(       
        decoration: BoxDecoration(
        color: Colors.transparent 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          checkBoxCustom(widget.title),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: Text(widget.price, style: TextStyle(color: Colors.white),),
          )
        ]
      )
    );
  }

  Widget checkBoxCustom(String title){
    return Row(
      children: <Widget>[
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
            value: check, 
            onChanged: (bool value){onChange(value); widget.callbackFunction();},
            checkColor: widget.checked,
            activeColor: Colors.white,
          )
        ),
        Text(title, style: TextStyle(color: Colors.white),)
      ]
    );
  }

}