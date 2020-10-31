import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var label = ["all", "cake", "fast food"];
    var lista = ["Vanilla Cake", "Cupcake", "Pankake"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  height: 220,
                  child: SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                focusColor: Colors.red,
                                onTap: () {},
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Cooking",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              InkWell(
                                focusColor: Colors.red,
                                onTap: () {},
                                child: Icon(
                                  Icons.notifications_none_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  fontSize: 18, color: Colors.white70),
                              labelText:
                                  "What bookmark are you searching for ?",
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white60,
                              ),
                              filled: true,
                              fillColor: Colors.white30,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Labels",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: label.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: MaterialButton(
                          color: Colors.deepPurple,
                          child: Text(
                            label[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bookmarks",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.grey,
                          ),
                          Text(
                            "154",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.deepPurpleAccent,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.exit_to_app_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.import_export,
                            color: Colors.deepPurpleAccent,
                          ),
                          onPressed: () {})
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    padding: EdgeInsets.all(20),
                    scrollDirection: Axis.vertical,
                    itemCount: lista.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 150,
                        child: Card(
                          margin: EdgeInsets.all(5),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: ListTile(
                                trailing: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.orange,
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.meeting_room,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                                title: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          lista[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20,
                                              color: Colors.black45),
                                        )),
                                    Row(
                                      children: [
                                        IconButton(
                                            icon: Icon(
                                              Icons.notifications,
                                              color:
                                                  Colors.deepPurpleAccent[100],
                                              size: 30,
                                            ),
                                            onPressed: () {}),
                                        IconButton(
                                            icon: Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 30,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ],
                                ),
                                contentPadding: EdgeInsets.all(20),
                                leading: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Container(
                                    margin: EdgeInsets.all(0),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent[100],
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: FlutterLogo(),
                                  ),
                                )),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
