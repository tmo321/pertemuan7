import 'package:flutter/material.dart';

void main() {
  runApp(const DemoUIElearning());
}

class DemoUIElearning extends StatelessWidget {
  const DemoUIElearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'Demo UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,  // Add this
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.white),
          onPressed: (){},
        ),
        title: Center(
            child: Text('Lesson')
        ),
        actions: <Widget>[
          PopupMenuButton(
            color: Colors.grey,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.email
                        ),
                        Text('Message')
                      ],
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      body: SizedBox(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            ListTile(
              title: Text('Transalte these phrases to english',
                style: TextStyle(fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
            ),
            SizedBox(
              height: 290,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Container(
                      width: 370,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const[
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: .1,
                              blurRadius: 5,
                              offset: Offset(0, 10),
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('"',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Text('Buenas noches,',
                                        style: TextStyle(
                                          fontSize: 40,
                                        ),)),
                                  Text('como estuvo',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),),
                                  Text('su dia?',
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('"',
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                            ),
                            Icon(Icons.message_rounded,
                              size: 25,
                              color: Colors.blue,),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Text('Your answer...',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: IconButton(
                icon: Icon(Icons.check_circle_rounded,
                  size: 80,
                  color: Colors.white,),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}