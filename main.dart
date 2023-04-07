import "package:flutter/material.dart";

void main() {
  runApp(Practiceapp());
}

class Practiceapp extends StatelessWidget {
  const Practiceapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "practice your work",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // verticalDirection: VerticalDirection.up,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.blue,
                  height: 80,
                  width: 200,
                  child: Center(
                    child: Text(
                      "this is container",
                      style: TextStyle(fontSize: 22),
                    ),
                  )),
              Container(
                  color: Colors.deepPurple,
                  height: 200,
                  width: 80,
                  child: Center(
                    child: Text(
                      "this is container",
                      style: TextStyle(fontSize: 22),
                    ),
                  )),
              Container(
                  color: Colors.greenAccent,
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(
                      "this is container",
                      style: TextStyle(fontSize: 22),
                    ),
                  )),
            ],
          ),
        ),
        /*  drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: "contact"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_a_photo),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Center(
          child: Container(
            height: double.infinity,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 8,
                ),
                // borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(12, 9),
                      blurRadius: 30),
                ]),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(30),
            child: Center(
              child: Text(
                "welcome to my first ever project and you will love it each and every blog of mine",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),*/
      ),
    );
  }
}
