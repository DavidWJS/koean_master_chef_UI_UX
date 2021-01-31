import 'package:flutter/material.dart';
import 'package:food/common/methodModel.dart';
import 'package:food/screen/home.dart';

class ByMethod extends StatefulWidget {
  @override
  _ByMethodState createState() => _ByMethodState();
}

class _ByMethodState extends State<ByMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF212128),
            Color(0xFF2f2e28),
            Color(0xFF47412b),
            Color(0xFFefb321),
          ],
          stops: [0.5, 0.6, 0.7, 0.9],
        ),
      ),
      child: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: methodModels.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0xFFefb321),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 10, bottom: 20),
                                  child: Text(
                                    methodModels[index].type,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 140,
                      width: 140,
                      child: Image.asset(
                        "${methodModels[index].imagePath}",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
