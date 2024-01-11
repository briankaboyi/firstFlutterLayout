import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  final String name;
  final String childName;
  final String smallText;

  final String mediumText;

  const TestScreen(
      {super.key,
      required this.name,
      required this.childName,
      required this.smallText,

      required this.mediumText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Padding(
            padding: const EdgeInsets.only(top:20.0,left: 10.0,right: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "brian",
                        style: TextStyle(
                            color: Colors.black12,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: "Design.",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 30,
                              fontWeight: FontWeight.bold))
                    ])),
                Container(

                  child: TextButton(


                    onPressed: () {},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color> (Colors.black87)),
                    child: Text(childName,style: TextStyle(color: Colors.white,fontSize: 20)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical:50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                   smallText,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child:  RichText(
                    text: const TextSpan(
                        text: "Design Digital Products With An Emphasis on ",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 75,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: "Visual Design",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontSize: 75,
                                  fontWeight: FontWeight.bold))
                        ])),
                // child: Text(largeText,
                //     style:
                //         TextStyle(fontSize: 75, fontWeight: FontWeight.w900)),
              ),
              Align(
                alignment: Alignment.centerLeft,

                child: Text(mediumText,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w300)),
              ),
            ]),
      ),
    );
  }
}
