import 'package:flutter/material.dart';
import 'package:pageview_tabcontrolselector/articledatamodel.dart';
import 'package:pageview_tabcontrolselector/slidepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ArticlePage(),
    );
  }
}

class ArticlePage extends StatefulWidget {
  ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage>
    with SingleTickerProviderStateMixin {
  PageController _controller = PageController(
    initialPage: 0,
  );
  void changeDot(int x) {
    setState(() {
      dotindex = x.toInt();
      _dotcontroller.animateTo(dotindex);
    });
  }

  final List<String> describtion = ['asd3424ad', 'ghfhfhg'];
  final List<String> image = [
    'assets/image/top-p2e-games-march.jpg',
    'assets/image/fdfdfd.jpg'
  ];
  late final TabController _dotcontroller;
  int dotindex = 0;
  void initState() {
    super.initState();
    _dotcontroller = TabController(
      length: describtion.length,
      initialIndex: dotindex,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Container(
        child: Center(
          child: TabPageSelector(
            selectedColor: Colors.amber.shade400,
            controller: _dotcontroller,
          ),
        ),
        height: 50,
        color: Color.fromARGB(255, 43, 43, 43),
      )),
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      appBar: AppBar(
        title: Text('هفت روش برای درآمد بیشتر '),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: PageView.builder(
                  scrollBehavior: ScrollBehavior(
                      androidOverscrollIndicator:
                          AndroidOverscrollIndicator.stretch),
                  // allowImplicitScrolling: true,
                  onPageChanged: changeDot,
                  itemCount: describtion.length,
                  controller: _controller,
                  itemBuilder: (ctx, index) {
                    return SlidePageWidget(
                      describtion: articleData[index].text,
                      image: articleData[index].image,
                      title: articleData[index].title,
                      starnote: articleData[index].starnote,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
