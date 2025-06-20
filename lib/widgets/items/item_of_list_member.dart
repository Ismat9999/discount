import 'package:flutter/material.dart';

Widget itemOfListMember(BuildContext context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 90,
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.redAccent),
                    image: DecorationImage(image: AssetImage("assets/images/watch.jpg"),fit: BoxFit.cover),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 35,maxWidth: 60,
                ),
                child: Text(
                  "Mega Market",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
