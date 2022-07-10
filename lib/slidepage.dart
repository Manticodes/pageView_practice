import 'package:flutter/material.dart';

class SlidePageWidget extends StatelessWidget {
  String describtion;
  String? image;
  String title;
  String? starnote;

  SlidePageWidget(
      {Key? key,
      required this.describtion,
      this.image,
      required this.title,
      this.starnote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 34, 36),
        body: SingleChildScrollView(
          child: Column(
            children: [
              image != null
                  ? Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 240,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image.toString()),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Color.fromARGB(0, 48, 47, 47),
                                Color.fromARGB(255, 36, 34, 36)
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
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(describtion,
                        style: TextStyle(
                            color: Color.fromARGB(255, 216, 216, 216),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(190, 78, 78, 78),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              starnote != null
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(starnote.toString(),
                              softWrap: true,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 216, 216, 216),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(186, 255, 193, 7),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )
                  : SizedBox()
            ],
          ),
        ));
  }
}
