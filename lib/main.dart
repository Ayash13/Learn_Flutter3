import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'SCOREBOARD',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: const <Widget>[
            Card1(),
            Card2(),
            Card3(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  int count1 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Card(
          elevation: 10,
          color: const Color.fromARGB(108, 255, 65, 122),
          child: SizedBox(
            width: 350,
            height: 220,
            child: Wrap(
              children: <Widget>[
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Card(
                      color: Color.fromARGB(81, 255, 65, 122),
                      child: SizedBox(
                        width: 320,
                        height: 80,
                        child: Center(
                          child: Text(
                            "Team 1",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "$count1",
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    //Plus
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count1 += 1;
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.add),
                            Text("Plus"),
                            SizedBox(
                              height: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    //Reset
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            while (count1 > 0) {
                              count1 = 0;
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.restore),
                            Text("Reset"),
                            SizedBox(
                              width: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    //Minus
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count1 -= 1;
                            while (count1 < 0) {
                              count1++;
                              if (count1 > 0) {
                                continue;
                              }
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.remove),
                            Text("Minus"),
                            SizedBox(
                              width: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  int count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Card(
          elevation: 10,
          color: const Color.fromARGB(108, 65, 255, 141),
          child: SizedBox(
            width: 350,
            height: 220,
            child: Wrap(
              children: <Widget>[
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Card(
                      color: Color.fromARGB(84, 65, 255, 141),
                      child: SizedBox(
                        width: 320,
                        height: 80,
                        child: Center(
                          child: Text(
                            "Team 2",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "$count2",
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    //Plus
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count2 += 1;
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.add),
                            Text("Plus"),
                            SizedBox(
                              height: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    //Reset
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            while (count2 > 0) {
                              count2 = 0;
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.restore),
                            Text("Reset"),
                            SizedBox(
                              width: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    //Minus
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count2 -= 1;
                            while (count2 < 0) {
                              count2++;
                              if (count2 > 0) {
                                continue;
                              }
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.remove),
                            Text("Minus"),
                            SizedBox(
                              width: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card3 extends StatefulWidget {
  const Card3({super.key});

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  int count3 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Card(
          elevation: 10,
          color: const Color.fromARGB(108, 65, 170, 255),
          child: SizedBox(
            width: 350,
            height: 220,
            child: Wrap(
              children: <Widget>[
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Card(
                      color: Color.fromARGB(66, 65, 170, 255),
                      child: SizedBox(
                        width: 320,
                        height: 80,
                        child: Center(
                          child: Text(
                            "Team 3",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "$count3",
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: <Widget>[
                    //Plus
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count3 += 1;
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.add),
                            Text("Plus"),
                            SizedBox(
                              height: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    //Reset
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            while (count3 > 0) {
                              count3 = 0;
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.restore),
                            Text("Reset"),
                            SizedBox(
                              width: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                    //Minus
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            count3 -= 1;
                            while (count3 < 0) {
                              count3++;
                              if (count3 > 0) {
                                continue;
                              }
                            }
                          });
                        }),
                        child: Row(
                          children: const [
                            Icon(Icons.remove),
                            Text("Minus"),
                            SizedBox(
                              width: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
