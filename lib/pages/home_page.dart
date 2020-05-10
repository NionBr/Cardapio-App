import 'package:cardapioapp/widgets/app_bar.dart';
import 'package:cardapioapp/widgets/list_options.dart';
import 'package:cardapioapp/widgets/options.dart';
import 'package:cardapioapp/utils/color_schemes.dart' as colorS;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int fontConfig = 1;
  int cont = 0;

  bool coffeeOne = false, coffeeTwo = false, coffeeThree = false;
  bool sweetOne = false, sweetTwo = false, sweetThree = false;
  bool foodOne = false, foodTwo = false, foodThree = false;
  bool drinkOne = false, drinkTwo = false, drinkThree = false;

  bool checking = false;
  int contList = 0;

  bool clickOne = false;
  bool clickTwo = false;
  bool clickThree = false;
  bool clickFour = false;

  double oneImageH = 0.12;
  double twoImageH = 0.12;
  double threeImageH = 0.12;
  double fourImageH = 0.12;

  double heightOne = 0, widthOne = 0;
  double heightTwo = 0, widthTwo = 0;
  double heightThree = 0, widthThree = 0;
  double heightFour = 0, widthFour = 0;

  double oneCoffee = 0.03;
  double oneSweet = 0.03;
  double oneFood = 0.03;
  double oneDrink = 0.03;

  double optionStateOne = 0;
  double optionStateTwo = 0;
  double optionStateThree = 0;
  double optionStateFour = 0;

  MainAxisAlignment oneVertical = MainAxisAlignment.center, oneHorizontal = MainAxisAlignment.start;
  MainAxisAlignment twoVertival = MainAxisAlignment.center, twoHorizontal = MainAxisAlignment.start;
  MainAxisAlignment threeVertical = MainAxisAlignment.center, threeHorizontal = MainAxisAlignment.start;
  MainAxisAlignment fourVertical = MainAxisAlignment.center, fourHorizontal = MainAxisAlignment.start;
  
  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceH = deviceHeight - deviceHeight/3.7;

    double fontSize = deviceHeight * 0.02 * fontConfig;

    double optionOne = deviceH/4 + optionStateOne;
    double optionTwo = deviceH/4 + optionStateTwo;
    double optionThree = deviceH/4 + optionStateThree;
    double optionFour = deviceH/4 + optionStateFour;

    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarCustom(
            cont: cont,
            button: "PRONTO",
          ),

          InkWell(
            child: Options(
              name: "one",
              isClicked: clickOne,
              imageName: Image.asset(
                "coffeecup.png",
                color: Colors.white,
                height: deviceHeight * oneImageH,
                width: deviceWidth * oneImageH,
              ),
              title: Text(
                  "Cafés",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: deviceHeight * oneCoffee,
                  fontWeight: FontWeight.bold
                )
              ),
              description: Text(
                "Esperimente nossos cafés",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize
                ),
              ),
              child: Container(
                width: widthOne,
                height: heightOne,
                child: Column(
                  children: <Widget>[
                    ListOption(
                      title: "Capuccino",
                      price: "R\$ 9,00",
                      checked: colorS.blueOne,
                      callbackFunction:(){coffeeBuilder("Capuccino", coffeeOne);},
                    ),
                    ListOption(
                      title: "Expresso",
                      price: "R\$ 8,50",
                      checked: colorS.blueOne,
                      callbackFunction:(){coffeeBuilder("Expresso", coffeeTwo);},
                    ),
                    ListOption(
                      title: "Com leite",
                      price: "R\$ 7,00",
                      checked: colorS.blueOne,
                      callbackFunction:(){coffeeBuilder("Com leite", coffeeThree);},
                    ),
                  ],
                ),
              ),
              vertical: oneVertical,
              horizontal: oneHorizontal,
              oHeight: optionOne,
              oneColor: colorS.blueOne,
              twoColor: colorS.blueTwo,
              shadowColor: colorS.darkBluoOne,
            ),
            onTap: (){
              check("one");
            },
          ),

          InkWell(
            child: Options(
              name: "two",
              isClicked: clickTwo,
              imageName: Image.asset(
                "sweet.png",
                color: Colors.white,
                height: deviceHeight * twoImageH,
                width: deviceWidth * twoImageH,
              ),
              title: Text(
                  "Doces",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: deviceHeight * oneSweet,
                  fontWeight: FontWeight.bold
                )
              ),
              description: Text(
                "Experimente nossos doces",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize
                ),
              ),
              child: Container(
                height: heightTwo,
                width: widthTwo,
                child: Column(
                  children: <Widget>[
                    ListOption(
                      title: "Torta de chocolate",
                      price: "R\$ 6,00",
                      checked: colorS.darkBluoOne,
                      callbackFunction: (){sweetBuilder("Torta de chocolate", sweetOne);},
                    ),
                    ListOption(
                      title: "Torta de morango",
                      price: "R\$ 6,50",
                      checked: colorS.darkBluoOne,
                      callbackFunction: (){sweetBuilder("Torta de morango", sweetTwo);},
                    ),
                    ListOption(
                      title: "Croissant",
                      price: "R\$ 5,00",
                      checked: colorS.darkBluoOne,
                      callbackFunction: (){sweetBuilder("Croissant", sweetThree);},
                    )
                  ]
                )
              ),
              vertical: twoVertival,
              horizontal: twoHorizontal,
              oHeight: optionTwo,
              oneColor: colorS.darkBluoOne,
              twoColor: colorS.darkBluoTwo,
              shadowColor: colorS.darkPurpleOne,
            ),
            onTap: (){
              check("two");
            },
          ),

          InkWell(
            child: Options(
              name: "three",
              isClicked: clickThree,
              imageName: Image.asset(
                "food.png",
                color: Colors.white,
                height: deviceHeight * threeImageH,
                width: deviceWidth * threeImageH,
              ),
              title: Text(
                  "Comidas",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: deviceHeight * oneFood,
                  fontWeight: FontWeight.bold
                )
              ),
              description: Text(
                "Experimente nossos pratos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize
                ),
              ),
              child: Container(
                height: heightThree,
                width: widthThree,
                child: Column(
                  children: <Widget>[
                    ListOption(
                      title: "Pastel",
                      price: "R\$ 4,50",
                      checked: colorS.purpleOne,
                      callbackFunction: (){foodBuilder("Pastel", foodOne);},
                    ),
                    ListOption(
                      title: "Esfirra",
                      price: "R\$ 5,50",
                      checked: colorS.purpleOne,
                      callbackFunction: (){foodBuilder("Esfirra", foodTwo);},
                    ),
                    ListOption(
                      title: "Coxinha",
                      price: "R\$ 5,00",
                      checked: colorS.purpleOne,
                      callbackFunction: (){foodBuilder("Coxinha", foodThree);},
                    )
                  ]
                ),
              ),
              vertical: threeVertical,
              horizontal: threeHorizontal,
              oHeight: optionThree,
              oneColor: colorS.purpleOne,
              twoColor: colorS.purpleTwo,
              shadowColor: colorS.darkPurpleOne,
            ),
            onTap: (){
              check("three");
            },
          ),

          InkWell(
            child: Options(
              name: "four",
              isClicked: clickFour,
              imageName: Image.asset(
                "drink.png",
                color: Colors.white,
                height: deviceHeight * fourImageH,
                width: deviceWidth * fourImageH,
              ),
              title: Text(
                  "Bebidas",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: deviceHeight * oneDrink,
                  fontWeight: FontWeight.bold
                )
              ),
              heigth: heightFour,
              width: widthFour,
              description: Text(
                "Experimente nossas bebidas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize
                ),
              ),
              child: Container(
                height: heightFour,
                width: widthFour,
                child: Column(
                  children: <Widget>[
                    ListOption(
                      title: "Vinho",
                      price: "R\$ 10,00",
                      checked: colorS.darkPurpleOne,
                      callbackFunction: (){drinkBuilder("Vinho", drinkOne);},
                    ),
                    ListOption(
                      title: "Refrigerante",
                      price: "R\$ 6,50",
                      checked: colorS.darkPurpleOne,
                      callbackFunction: (){drinkBuilder("Refrigerante", drinkTwo);},
                    ),
                    ListOption(
                      title: "Suco",
                      price: "R\$ 5,50",
                      checked: colorS.darkPurpleOne,
                      callbackFunction: (){drinkBuilder("Suco", drinkThree);},
                    )
                  ]
                ),
              ),
              vertical: fourVertical,
              horizontal: fourHorizontal,
              oHeight: optionFour,
              oneColor: colorS.darkPurpleOne,
              twoColor: colorS.darkPurpleTwo,
              shadowColor: colorS.purpleOne,
            ),
            onTap: (){
              check("four");
            },
          ),

        ],
      )
    );
  }

  void coffeeBuilder(String name, bool value){
    if(name == "Capuccino"){
      if(value == false){
        setState(() {cont += 1;coffeeOne = true;});
      }else{
        setState(() {cont -= 1;coffeeOne = false;});
      }
    }else if(name == "Expresso"){
      if(value == false){
        setState(() {cont += 1; coffeeTwo = true;});
      }else{
        setState(() {cont -= 1;coffeeTwo = false;});
      }
    }else if(name == "Com leite"){
      if(value == false){
        setState(() {cont += 1;coffeeThree = true;});
      }else{
        setState(() {cont -= 1;coffeeThree = false;});
      }
    }
  }

  void sweetBuilder(String name, bool value){
    if(name == "Torta de chocolate"){
      if(value == false){
        setState(() {cont += 1;sweetOne = true;});
      }else{
        setState(() {cont -= 1;sweetOne = false;});
      }
    }else if(name == "Torta de morango"){
      if(value == false){
        setState(() {cont += 1; sweetTwo = true;});
      }else{
        setState(() {cont -= 1;sweetTwo = false;});
      }
    }else if(name == "Croissant"){
      if(value == false){
        setState(() {cont += 1;sweetThree = true;});
      }else{
        setState(() {cont -= 1;sweetThree = false;});
      }
    }
  }

  void foodBuilder(String name, bool value){
    if(name == "Pastel"){
      if(value == false){
        setState(() {cont += 1;foodOne = true;});
      }else{
        setState(() {cont -= 1;foodOne = false;});
      }
    }else if(name == "Esfirra"){
      if(value == false){
        setState(() {cont += 1; foodTwo = true;});
      }else{
        setState(() {cont -= 1;foodTwo = false;});
      }
    }else if(name == "Coxinha"){
      if(value == false){
        setState(() {cont += 1;foodThree = true;});
      }else{
        setState(() {cont -= 1;foodThree = false;});
      }
    }
  }

  void drinkBuilder(String name, bool value){
    if(name == "Vinho"){
      if(value == false){
        setState(() {cont += 1;drinkOne = true;});
      }else{
        setState(() {cont -= 1;drinkOne = false;});
      }
    }else if(name == "Refrigerante"){
      if(value == false){
        setState(() {cont += 1; drinkTwo = true;});
      }else{
        setState(() {cont -= 1;drinkTwo = false;});
      }
    }else if(name == "Suco"){
      if(value == false){
        setState(() {cont += 1;drinkThree = true;});
      }else{
        setState(() {cont -= 1;drinkThree = false;});
      }
    }
  }

  void check(String name){
    if(clickOne == false && clickTwo == false && clickThree == false && clickFour == false){
      if(name == "one"){
       setState(() {
         widthOne = double.infinity;
         heightOne = null;
         oneCoffee = 0;
         oneVertical = MainAxisAlignment.start;
         oneHorizontal = MainAxisAlignment.center;
         oneImageH = 0.18;
         twoImageH = 0.08;
         threeImageH = 0.08;
         fourImageH = 0.08;
         fontConfig = 0;
         clickOne = true;  
         optionStateOne = 150;
         optionStateTwo = -50;
         optionStateThree = -50;
         optionStateFour = -50;
       });
      }else if(name == "two"){
        setState(() {
         heightTwo = null;
         widthTwo = double.infinity;
         oneSweet = 0;
         twoVertival = MainAxisAlignment.start;
         twoHorizontal = MainAxisAlignment.center;
         oneImageH = 0.08;
         twoImageH = 0.18;
         threeImageH = 0.08;
         fourImageH = 0.08;
         fontConfig = 0;
         clickTwo = true;  
         optionStateOne = -50;
         optionStateTwo = 150;
         optionStateThree = -50;
         optionStateFour = -50;
       });
      }else if(name == "three"){
        setState(() {
         heightThree = null;
         widthThree = double.infinity;
         oneFood = 0;
         threeVertical = MainAxisAlignment.start;
         threeHorizontal = MainAxisAlignment.center;
         oneImageH = 0.08;
         twoImageH = 0.08;
         threeImageH = 0.18;
         fourImageH = 0.08;
         fontConfig = 0; 
         clickThree = true;  
         optionStateOne = -50;
         optionStateTwo = -50;
         optionStateThree = 150;
         optionStateFour = -50;
       });
      }else if(name == "four"){
        setState(() {
         heightFour = null;
         widthFour = double.infinity;
         oneDrink = 0;
         fourVertical = MainAxisAlignment.start;
         fourHorizontal = MainAxisAlignment.center;
         oneImageH = 0.08;
         twoImageH = 0.08;
         threeImageH = 0.08;
         fourImageH = 0.18; 
         fontConfig = 0;
         clickFour = true;  
         optionStateOne = -50;
         optionStateTwo = -50;
         optionStateThree = -50;
         optionStateFour = 150;
       });
      }
    }else if(clickOne == true && name == "one"){
      setState(() {
        heightOne = 0;
        widthOne = 0;
        oneCoffee = 0.03;
        oneVertical = MainAxisAlignment.center;
        oneHorizontal = MainAxisAlignment.start;
        oneImageH = 0.12;
        twoImageH = 0.12;
        threeImageH = 0.12;
        fourImageH = 0.12;
        fontConfig = 1;
        clickOne = false;  
        optionStateOne = 0;
        optionStateTwo = 0;
        optionStateThree = 0;
        optionStateFour = 0;
      });
    }else if(clickOne == true && name == "two"){
      setState(() {
        heightOne = 0;
        widthOne = 0;
        heightTwo = null;
        widthTwo = double.infinity;
        oneSweet = 0;
        oneCoffee = 0.03;
        oneVertical = MainAxisAlignment.center;
        oneHorizontal = MainAxisAlignment.start;
        twoVertival = MainAxisAlignment.start;
        twoHorizontal = MainAxisAlignment.center;
        oneImageH = 0.08;
        twoImageH = 0.18;
        threeImageH = 0.08;
        fourImageH = 0.08;
        clickOne = false;
        clickTwo = true;
        optionStateOne = -50;
        optionStateTwo = 150;
        optionStateThree = -50;
        optionStateFour = -50;
      });
    }else if(clickOne == true && name == "three"){
      setState(() {
        heightOne = 0;
        widthOne = 0;
        heightThree = null;
        widthThree = double.infinity;
        oneCoffee = 0.03;
        oneFood = 0;
        oneVertical = MainAxisAlignment.center;
        oneHorizontal = MainAxisAlignment.start;
        threeVertical = MainAxisAlignment.start;
        threeHorizontal = MainAxisAlignment.center;
        oneImageH = 0.08;
        twoImageH = 0.08;
        threeImageH = 0.18;
        fourImageH = 0.08;
        clickOne = false;
        clickThree = true;
        optionStateOne = -50;
        optionStateTwo = -50;
        optionStateThree = 150;
        optionStateFour = -50;
      });
    }else if(clickOne == true && name == "four"){
      setState(() {
        heightOne = 0;
        widthOne = 0;
        heightFour = null;
        widthFour = double.infinity;
        oneCoffee = 0.03;
        oneDrink = 0;
        oneVertical = MainAxisAlignment.center;
        oneHorizontal = MainAxisAlignment.start;
        fourVertical = MainAxisAlignment.start;
        fourHorizontal = MainAxisAlignment.center;
        oneImageH = 0.08;
        twoImageH = 0.08;
        threeImageH = 0.08;
        fourImageH = 0.18;
        clickOne = false;
        clickFour = true;
        optionStateOne = -50;
        optionStateTwo = -50;
        optionStateThree = -50;
        optionStateFour = 150;
      });
    }else if(clickTwo == true && name == "two"){
      setState(() {
        heightTwo = 0;
        widthTwo = 0;
        oneSweet = 0.03;
        twoVertival = MainAxisAlignment.center;
        twoHorizontal = MainAxisAlignment.start;
        oneImageH = 0.12;
        twoImageH = 0.12;
        threeImageH = 0.12;
        fourImageH = 0.12;
        fontConfig = 1;
        clickTwo = false;
        optionStateOne = 0;
        optionStateTwo = 0;
        optionStateThree = 0;
        optionStateFour = 0;
      });
    }else if(clickTwo == true && name == "one"){
      setState(() {
        heightTwo = 0;
        widthTwo = 0;
        heightOne = null;
        widthOne = double.infinity;
        oneSweet = 0.03;
        oneCoffee = 0;
        oneVertical = MainAxisAlignment.start;
        oneHorizontal = MainAxisAlignment.center;
        twoVertival = MainAxisAlignment.center;
        twoHorizontal = MainAxisAlignment.start;
        oneImageH = 0.18;
        twoImageH = 0.08;
        threeImageH = 0.08;
        fourImageH = 0.08;
        clickTwo = false;
        clickOne = true;
        optionStateOne = 150;
        optionStateTwo = -50;
        optionStateThree = -50;
        optionStateFour = -50;
      });
    }else if(clickTwo == true && name == "three"){
      setState(() {
        heightTwo = 0;
        widthTwo = 0;
        heightThree = null;
        widthThree = double.infinity;
        oneSweet = 0.03;
        oneFood = 0;
        twoVertival = MainAxisAlignment.center;
        twoHorizontal = MainAxisAlignment.start;
        threeVertical = MainAxisAlignment.start;
        threeHorizontal = MainAxisAlignment.center;
        oneImageH = 0.08;
        twoImageH = 0.08;
        threeImageH = 0.18;
        fourImageH = 0.08;
        clickTwo = false;
        clickThree = true;
        optionStateOne = -50;
        optionStateTwo = -50;
        optionStateThree = 150;
        optionStateFour = -50;
      });
    }else if(clickTwo == true && name == "four"){
      setState(() {
        heightTwo = 0;
        widthTwo = 0;
        heightFour = null;
        widthFour = double.infinity;
        oneSweet = 0.03;
        oneDrink = 0;
        twoVertival = MainAxisAlignment.center;
        twoHorizontal = MainAxisAlignment.start;
        fourVertical = MainAxisAlignment.start;
        fourHorizontal = MainAxisAlignment.center;
        oneImageH = 0.08;
        twoImageH = 0.08;
        threeImageH = 0.08;
        fourImageH = 0.18;
        clickTwo = false;
        clickFour = true;
        optionStateOne = -50;
        optionStateTwo = -50;
        optionStateThree = -50;
        optionStateFour = 150;
      });
    }else if(clickThree == true && name == "three"){
      setState(() {
        heightThree = 0;
        widthThree = 0;
        oneFood = 0.03;
        threeVertical = MainAxisAlignment.center;
        threeHorizontal = MainAxisAlignment.start;
        oneImageH = 0.12;
        twoImageH = 0.12;
        threeImageH = 0.12;
        fourImageH = 0.12;
        fontConfig = 1;
        clickThree = false;
        optionStateOne = 0;
        optionStateTwo = 0;
        optionStateThree = 0;
        optionStateFour = 0;
      });
    }else if(clickThree == true && name == "one"){
      setState(() {
        heightThree = 0;
        widthThree = 0;
        heightOne = null;
        widthOne = double.infinity;
        oneCoffee = 0;
        oneFood = 0.03;
        oneVertical = MainAxisAlignment.start;
        oneHorizontal = MainAxisAlignment.center;
        threeVertical = MainAxisAlignment.center;
        threeHorizontal = MainAxisAlignment.start;
        oneImageH = 0.18;
        twoImageH = 0.08;
        threeImageH = 0.08;
        fourImageH = 0.08;
        clickThree = false;
        clickOne = true;
        optionStateOne = 150;
        optionStateTwo = -50;
        optionStateThree = -50;
        optionStateFour = -50;
      });
    }else if(clickThree == true && name == "two"){
      setState(() {
        heightThree = 0;
        widthThree = 0;
        heightTwo = null;
        widthTwo = double.infinity;
        oneSweet = 0;
        oneFood = 0.03;
        twoVertival = MainAxisAlignment.start;
        twoHorizontal = MainAxisAlignment.center;
        threeVertical = MainAxisAlignment.center;
        threeHorizontal = MainAxisAlignment.start;
        oneImageH = 0.08;
        twoImageH = 0.18;
        threeImageH = 0.08;
        fourImageH = 0.08;
        clickThree = false;
        clickTwo = true;
        optionStateOne = -50;
        optionStateTwo = 150;
        optionStateThree = -50;
        optionStateFour = -50;
      });
    }else if(clickThree == true && name == "four"){
      setState(() {
        heightThree = 0;
        widthThree = 0;
        heightFour = null;
        widthFour = double.infinity;
        oneFood = 0.03;
        oneDrink = 0;
        threeVertical = MainAxisAlignment.center;
        threeHorizontal = MainAxisAlignment.start;
        fourVertical = MainAxisAlignment.start;
        fourHorizontal = MainAxisAlignment.center;
        oneImageH = 0.08;
        twoImageH = 0.08;
        threeImageH = 0.08;
        fourImageH = 0.18;
        clickThree = false;
        clickFour = true;
        optionStateOne = -50;
        optionStateTwo = -50;
        optionStateThree = -50;
        optionStateFour = 150;
      });
    }else if(clickFour == true && name == "four"){
      setState(() {
        heightFour = 0;
        widthFour = 0;
        oneDrink = 0.03;
        fourVertical = MainAxisAlignment.center;
        fourHorizontal = MainAxisAlignment.start;
        oneImageH = 0.12;
        twoImageH = 0.12;
        threeImageH = 0.12;
        fourImageH = 0.12;
        fontConfig = 1;
        clickFour = false;
        optionStateOne = 0;
        optionStateTwo = 0;
        optionStateThree = 0;
        optionStateFour = 0;
      });
    }else if(clickFour == true && name == "one"){
      setState(() {
        heightFour = 0;
        widthFour = 0;
        heightOne = null;
        widthOne = double.infinity;
        oneCoffee = 0;
        oneDrink = 0.03;
        oneVertical = MainAxisAlignment.start;
        oneHorizontal = MainAxisAlignment.center;
        fourVertical = MainAxisAlignment.center;
        fourHorizontal = MainAxisAlignment.start;
        oneImageH = 0.18;
        twoImageH = 0.08;
        threeImageH = 0.08;
        fourImageH = 0.08;
        clickFour = false;
        clickOne = true;
        optionStateOne = 150;
        optionStateTwo = -50;
        optionStateThree = -50;
        optionStateFour = -50;
      });
    }else if(clickFour == true && name == "two"){
      setState(() {
        heightFour = 0;
        widthFour = 0;
        heightTwo = null;
        widthTwo = double.infinity;
        oneSweet = 0;
        oneDrink = 0.03;
        twoVertival = MainAxisAlignment.start;
        twoHorizontal = MainAxisAlignment.center;
        fourVertical = MainAxisAlignment.center;
        fourHorizontal = MainAxisAlignment.start;
        oneImageH = 0.08;
        twoImageH = 0.18;
        threeImageH = 0.08;
        fourImageH = 0.08;
        clickFour = false;
        clickTwo = true;
        optionStateOne = -50;
        optionStateTwo = 150;
        optionStateThree = -50;
        optionStateFour = -50;
      });
    }else if(clickFour == true && name == "three"){
      setState(() {
        heightFour = 0;
        widthFour = 0;
        heightThree = null;
        widthThree = double.infinity;
        oneFood = 0;
        oneDrink = 0.03;
        threeVertical = MainAxisAlignment.start;
        threeHorizontal = MainAxisAlignment.center;
        fourVertical = MainAxisAlignment.center;
        fourHorizontal = MainAxisAlignment.start;
        oneImageH = 0.08;
        twoImageH = 0.08;
        threeImageH = 0.18;
        fourImageH = 0.08;
        clickFour = false;
        clickThree = true;
        optionStateOne = -50;
        optionStateTwo = -50;
        optionStateThree = 150;
        optionStateFour = -50;
      });
    }
  }

}