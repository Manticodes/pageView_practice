import 'package:flutter/material.dart';

class SlidePageWidget extends StatelessWidget {
  String describtion;
  String? image;
  String title;
  String? starnote;
  String? image2;
  String? describtion2;
  String? starnote2;

  SlidePageWidget(
      {Key? key,
      required this.describtion,
      this.image,
      required this.title,
      this.starnote,
      this.describtion2,
      this.image2,
      this.starnote2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        body: SingleChildScrollView(
          child: Column(
            children: [
              image != null
                  ? Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: _width,
                          height: _width / 1.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image.toString()),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color.fromARGB(6, 70, 66, 66),
                                Color.fromARGB(255, 39, 39, 39),
                              ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                          height: 80,
                        ),
                      ],
                    )
                  : SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(
                      color: Color.fromARGB(255, 142, 183, 65), fontSize: 25),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(describtion,
                        style: TextStyle(
                            color: Color.fromARGB(255, 171, 171, 171),
                            fontSize: 18.5,
                            fontWeight: FontWeight.bold,
                            height: 1.55),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(190, 52, 56, 59),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              starnote != null
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.event_note,
                            color: Colors.amberAccent,
                          ),
                          Flexible(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(starnote.toString(),
                                    softWrap: true,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 227, 227, 225),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 115, 102, 68),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              image2 != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: _width,
                        height: _width / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(image2.toString()),
                                fit: BoxFit.cover)),
                      ),
                    )
                  : SizedBox(),
              describtion2 != null
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(describtion2.toString(),
                              style: TextStyle(
                                  color: Color.fromARGB(255, 171, 171, 171),
                                  fontSize: 18.5,
                                  fontWeight: FontWeight.bold,
                                  height: 1.55),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(190, 52, 56, 59),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  : SizedBox(),
              starnote2 != null
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(starnote2.toString(),
                                    softWrap: true,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 227, 227, 225),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 115, 102, 68),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          Icon(
                            Icons.event_note,
                            color: Colors.amberAccent,
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ));
  }
}
