import 'package:flutter/material.dart';

Widget itemOfPost(BuildContext context) {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white70,
                ),
                child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(7)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/watch.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints:
                                      BoxConstraints(maxWidth: 130, maxHeight: 40),
                                  child: Text("SMART WATCH"),
                                ),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints:
                                  BoxConstraints(maxWidth: 130),
                                  child: Text("1290000 РУБ",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Icon(Icons.more_horiz),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Ташкент"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white70,
                ),
                child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(7)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/car.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints:
                                  BoxConstraints(maxWidth: 130, maxHeight: 40),
                                  child: Text("SMART WATCH"),
                                ),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints:
                                  BoxConstraints(maxWidth: 130),
                                  child: Text("1290000 USD",style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Icon(Icons.more_horiz),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Ташкент"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
