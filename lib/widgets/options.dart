import 'package:flutter/material.dart';

class Options extends StatefulWidget {

  final Color oneColor, twoColor, shadowColor;
  final double oHeight, heigth, width;
  final bool isClicked;
  final String name;
  final Text description, title;
  final Image imageName;
  final MainAxisAlignment horizontal, vertical;
  final Widget child;

  Options({this.oneColor, this.twoColor, this.shadowColor,
   this.oHeight, this.isClicked, this.name, this.imageName,
   this.title, this.description, this.horizontal, this.vertical,
   this.heigth, this.width, this.child});

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      height: widget.oHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.oneColor, widget.twoColor],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        ),
        boxShadow: [BoxShadow(
          color: widget.shadowColor,
          blurRadius: 20, 
          offset: Offset(0,7)
        )]
      ),
      child: Column(
        mainAxisAlignment: widget.vertical,
        children: <Widget>[
          Row(
            mainAxisAlignment: widget.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: widget.imageName
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  widget.title,

                  widget.description,

                ],
              )
            ]
          ),
          widget.child
        ]
      ),
    );
  }
}