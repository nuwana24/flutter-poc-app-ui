import 'package:flutter/material.dart';
import '../../src/custom_widgets/food_item.dart';
import '../../src/utils/themes.dart';
import '../../src/utils/utility.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.BACKGROUND_COLOR,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ConstantColors.BACKGROUND_COLOR,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_active), onPressed: () {}),
        ],
      ),
      body: bodyView(context),
      drawer: Drawer(),
    );
  }

  Widget bodyView(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy ',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                Text(
                  'Food',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      fontSize: 30.0),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
              padding: EdgeInsets.only(top: 2.0),
              height: MediaQuery.of(context).size.height - 158,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50.0))),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: 25.0, right: 25.0),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: FoodItem(
                              foodName: Utility.itemNames[index],
                              price: Utility.itemPrice[index],
                              imagePath: Utility.imagePath[index],
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 65.0,
                          height: 60.0,
                          buttonColor: Colors.white,
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                            child: Center(
                              child: Icon(Icons.search, color: Colors.black),
                            ),
                            color: Colors.white,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 65.0,
                          height: 60.0,
                          buttonColor: Colors.white,
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.grey),
                            ),
                            child: Center(
                              child: Icon(Icons.shopping_basket, color: Colors.black),
                            ),
                            color: Colors.white,
                          ),
                        ),
                        ButtonTheme(
                          minWidth: 65.0,
                          height: 60.0,
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.white),
                            ),
                            child: Center(
                              child: Text('Checkout',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold
                                  )
                              )
                            ),
                            color: ConstantColors.BACKGROUND_COLOR,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        )
      ],
    );
  }
}
