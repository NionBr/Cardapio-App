import 'package:flutter/material.dart';
import 'package:cardapioapp/utils/color_schemes.dart' as colorS;
import 'package:fluttertoast/fluttertoast.dart';

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();

  final int cont;
  final String button;

  AppBarCustom({this.cont, this.button});

}

class _AppBarCustomState extends State<AppBarCustom> {

  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          height: deviceHeight/3.7,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(8, 32, 8, 25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [colorS.greenOne, colorS.greenTwo],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu), 
                    color: Colors.white,
                    onPressed: (){}
                  ),
                  Text("MENU", style: TextStyle(color: Colors.white),)
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Text(widget.cont.toString() + " Itens", style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: InkWell(
                      child: Text("${widget.button}", style: TextStyle(color: Colors.white)),
                      onTap: (){dialogBuilder(widget.cont, context, deviceHeight/8);}
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );  
  }

  void dialogBuilder(int value, BuildContext context, double size){
    if(value == 0){
      Fluttertoast.showToast(
        msg: "Nenhum item selecionado!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 14.0
      );
    }else{
      showDialog(context: context, barrierDismissible: false,builder: (context){
        return AlertDialog(
          backgroundColor: colorS.greenOne,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.check_circle, color: Colors.white, size: size,),
              Text("Pedido realizado com sucesso! :)",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),)
            ]
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: (){Navigator.pop(context);},
              child: Text("Ok", style: TextStyle(color: Colors.white),),
            )
          ],
        );
      });
    }
  }

}