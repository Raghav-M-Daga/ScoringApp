import 'package:flutter/material.dart';


void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static int autoScore = 0;
  int teleScore = 0;
  int sum = 0;
  bool terminalPark = false;
  bool zonePark = false;
  bool customZone = false;
  bool terminalPark2 = false;
  bool zonePark2 = false;
  bool customZone2 = false;
  int autoHigh = 0;
  int autoMed = 0;
  int autoLow = 0;
  int autoGrnd = 0;
  int autoTerm = 0;
  int teleHigh = 0;
  int teleMed = 0;
  int teleLow = 0;
  int teleGrnd = 0;
  int teleTerm = 0;
  bool telePark = false;
  bool telePark2 = false;
  bool circuit = false;
  bool beaconed = false;
  double beaconed2 = 0;
  int beaconed2Int = 0;
  double capped = 0;
  int cappedInt = 0;
  int penalty = 0;
  int majorPen = 0;
  int minorPen = 0;

  @override
  Widget build(BuildContext context) {
    Row buildRow(String junction, int point) {
      int counter = 0;
       return Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
              child: Text(
                  "$junction", style: TextStyle(fontSize: 15.0)),),
            Spacer(),
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                child: Text("$counter", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    autoScore += 8;
                    sum += 8;
                    autoMed += 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  minimumSize: const Size(40, 40),
                  backgroundColor: Colors.green[500],
                ),
                child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_HomeState.autoScore > 0) {
                      autoScore += 8;
                      sum += 8;
                      autoMed += 1;
                    }
                    autoScore += 8;
                    sum += 8;
                    autoMed += 1;
                  });

                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  minimumSize: const Size(40, 40),
                  backgroundColor: Colors.red[800],
                ),
                child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
              ),

            )
          ]
      );
    }
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Score:", style: TextStyle(fontSize: 35.0),),
            SizedBox(width: 30),
            Text("$sum", style: TextStyle(fontSize: 35.0),),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber), foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                    setState( () {
                      autoScore = 0;
                      teleScore = 0;
                      sum = 0;
                      terminalPark = false;
                      zonePark = false;
                      customZone = false;
                      terminalPark2 = false;
                      zonePark2 = false;
                      customZone2 = false;
                      autoHigh = 0;
                      autoMed = 0;
                      autoLow = 0;
                      autoGrnd = 0;
                      autoTerm = 0;
                      teleHigh = 0;
                      teleMed = 0;
                      teleLow = 0;
                      teleGrnd = 0;
                      teleTerm = 0;
                      telePark = false;
                      telePark2 = false;
                      circuit = false;
                      beaconed = false;
                      beaconed2 = 0;
                      beaconed2Int = 0;
                      capped = 0;
                      cappedInt = 0;
                      penalty = 0;
                      majorPen = 0;
                      minorPen = 0;
                    });
                },
                child: Text("Reset", style: TextStyle(fontSize: 25.0))))
          ],
        ),

        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        bottom: TabBar(
          indicatorColor: Colors.amber[300],
          unselectedLabelColor: Colors.grey[400],
          tabs: [
            Tab(text: "1 Robot"),
            Tab(text: "2 Robots"),
          ]
        )

      ),
      body: TabBarView(
        children: [
      SingleChildScrollView(child: Column(
          children: [
            // Autonomous Score Heading
            Container(
              color: Colors.white,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 20.0),
                      child: Text("Autonomous", style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold,))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 22.0, 0.0),
                      child: Container(width: 84.0,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("$autoScore", style: TextStyle(fontSize: 25.0,),)])))
                ]
            )),
            // High Junction
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "High Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$autoHigh", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          autoScore += 10;
                          sum += 10;
                          autoHigh += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (autoHigh > 0) {
                            autoScore -= 10;
                            sum -= 10;
                            autoHigh -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Medium Junction
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Medium Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$autoMed", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          autoScore += 8;
                          sum += 8;
                          autoMed += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (autoMed > 0) {
                            autoScore -= 8;
                            sum -= 8;
                            autoMed -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Low Junction
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Low Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$autoLow", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          autoScore += 6;
                          sum += 6;
                          autoLow += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (autoLow > 0) {
                            autoScore -= 6;
                            sum -= 6;
                            autoLow -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Ground Junction
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Ground Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$autoGrnd", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          autoScore += 4;
                          sum += 4;
                          autoGrnd += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (autoGrnd > 0) {
                            autoScore -= 4;
                            sum -= 4;
                            autoGrnd -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Terminal", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$autoTerm", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          autoScore += 2;
                          sum += 2;
                          autoTerm += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (autoTerm > 0) {
                            autoScore -= 2;
                            sum -= 2;
                            autoTerm -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Parking", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(100, 35),
                              backgroundColor: terminalPark ? Colors.yellow[800] : Colors.black54,
                            ),
                            child: Text("Terminal"),
                            onPressed: () {
                              setState(() {
                                if (zonePark) {
                                  if (customZone) {
                                    sum -= 20;
                                    autoScore -= 20;
                                  } else {
                                    sum -= 10;
                                    autoScore -= 10; }
                                }
                                if (!terminalPark) {
                                  sum += 2;
                                  autoScore += 2;
                                  terminalPark = true;
                                  zonePark = false;
                                  customZone = false;
                                } else {
                                  sum -= 2;
                                  autoScore -= 2;
                                  terminalPark = false;
                                }});
                            },

                          )
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(80, 25),
                                  backgroundColor: customZone ? Colors.yellow[800] : Colors.black54,
                                ),
                                child: Text("Custom"),
                                onPressed: () {
                                  setState(() {
                                    if (!customZone) {
                                      if (terminalPark) {
                                        sum -= 2;
                                        autoScore -= 2;
                                      }
                                      customZone = true;
                                      terminalPark = false;
                                      if (zonePark) {
                                        sum += 10;
                                        autoScore += 10; }
                                    } else {
                                      if (zonePark) {
                                        sum -= 10;
                                        autoScore -= 10;
                                      }
                                      customZone = false;
                                    }

                                  });
                                },

                              )
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(100, 35),
                                  backgroundColor: zonePark ? Colors.yellow[800] : Colors.black54,
                                ),
                                child: Text("Zone"),
                                onPressed: () {
                                  setState(() {
                                    if (terminalPark) {
                                      sum -= 2;
                                      autoScore -= 2;
                                    }
                                    if (customZone) {
                                      if (!zonePark) {
                                        sum += 20;
                                        autoScore += 20;
                                        zonePark = true;
                                        terminalPark = false;
                                      } else {
                                        sum -= 20;
                                        autoScore -= 20;
                                        zonePark = false;
                                        customZone = false;
                                      }
                                    } else {
                                        if (!zonePark) {
                                          sum += 10;
                                          autoScore += 10;
                                          zonePark = true;
                                          terminalPark = false;
                                        } else {
                                          sum -= 10;
                                          autoScore -= 10;
                                          zonePark = false;
                                        }
                                    }
                                  });
                                  }

                              )
                          ),
                        ]
                      ),


                    ]
                  )


])),

            // Tele-Op
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 20.0),
                      child: Text("Tele-Op & EG", style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 22.0, 0.0),
                      child: Container(width: 84.0,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("$teleScore", style: TextStyle(fontSize: 25.0,),)])))
                ]
            ),
            // High Junction
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "High Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$teleHigh", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teleScore += 5;
                          sum += 5;
                          teleHigh += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (teleHigh > 0) {
                            teleScore -= 5;
                            sum -= 5;
                            teleHigh -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Medium Junction
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Medium Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$teleMed", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teleScore += 4;
                          sum += 4;
                          teleMed += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (teleMed > 0) {
                            teleScore -= 4;
                            sum -= 4;
                            teleMed -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Low Junction
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Low Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$teleLow", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teleScore += 3;
                          sum += 3;
                          teleLow += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (teleLow > 0) {
                            teleScore -= 3;
                            sum -= 3;
                            teleLow -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Ground Junction
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Ground Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$teleGrnd", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teleScore += 2;
                          sum += 2;
                          teleGrnd += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (teleGrnd > 0) {
                            teleScore -= 2;
                            sum -= 2;
                            teleGrnd -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Terminal", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$teleTerm", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teleScore += 1;
                          sum += 1;
                          teleTerm += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (teleTerm > 0) {
                            teleScore -= 1;
                            sum -= 1;
                            teleTerm -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Circuit", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(92, 35),
                        backgroundColor: circuit ? Colors.yellow[800] : Colors.black54,),
                      onPressed: () {
                        setState(() {
                          if (!circuit) {
                            circuit = true;
                            sum += 20;
                            teleScore += 20;
                          } else {
                            circuit = false;
                            sum -= 20;
                            teleScore -= 20;
                          }
                        });
                      },
                      child: Text("Created"),
                    ),

                  ),

                ]
            )),
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Beaconed", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(92, 35),
                        backgroundColor: beaconed ? Colors.yellow[800] : Colors.black54,),
                      onPressed: () {
                        setState(() {
                          if (!beaconed) {
                            beaconed = true;
                            sum += 10;
                            teleScore += 10;
                          } else {
                            beaconed = false;
                            sum -= 10;
                            teleScore -= 10;
                          }
                        });
                      },
                      child: Text("Capped"),
                    ),

                  ),
          ]
            )),
            Container(
              color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Parking", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(92, 35),
                        backgroundColor: telePark ? Colors.yellow[800] : Colors.black54,),
                      onPressed: () {
                        setState(() {
                          if (!telePark) {
                            telePark = true;
                            sum += 2;
                            teleScore += 2;
                          } else {
                            telePark = false;
                            sum -= 2;
                            teleScore -= 2;
                          }
                        });
                      },
                      child: Text("Parked"),
                    ),

                  ),
                ]
            )),
            Container(
                color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Capped Junctions", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$cappedInt", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teleScore += 3;
                          sum += 3;
                          cappedInt += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (cappedInt > 0) {
                            teleScore -= 3;
                            sum -= 3;
                            cappedInt -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )

                ]
            )),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 20.0),
                      child: Text("Penalties", style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 22.0, 0.0),
                      child: Container(width: 84.0,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("$penalty", style: TextStyle(fontSize: 25.0,),)])))
                ]
            ),
            Container(
              color: Colors.deepPurple,
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Major:", style: TextStyle(fontSize: 15.0)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$majorPen", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          penalty -= 30;
                          sum -= 30;
                          majorPen += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (majorPen > 0) {
                            penalty += 30;
                            sum += 30;
                            majorPen -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Minor Penalty
            Container(
                color: Colors.deepPurple[300],
                child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                        "Minor Penalty", style: TextStyle(fontSize: 15.0)),),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                      child: Text("$minorPen", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          penalty -= 10;
                          sum -= 10;
                          minorPen += 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.black54,
                      ),
                      child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (minorPen > 0) {
                            penalty += 10;
                            sum += 10;
                            minorPen -= 1;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: const Size(40, 40),
                        backgroundColor: Colors.grey[700],
                      ),
                      child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),

                  )
                ]
            )),
            // Second Page

          ])),
          SingleChildScrollView(child: Column(
              children: [
                // Autonomous Score Heading
                Container(
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 20.0),
                              child: Text("Autonomous", style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold,))),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 10.0, 22.0, 0.0),
                              child: Container(width: 84.0,
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("$autoScore", style: TextStyle(fontSize: 25.0,),)])))
                        ]
                    )),
                // High Junction
                Container(
                    color: Colors.deepPurple,
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                            child: Text(
                                "High Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                              child: Text("$autoHigh", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  autoScore += 10;
                                  sum += 10;
                                  autoHigh += 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.black54,
                              ),
                              child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (autoHigh > 0) {
                                    autoScore -= 10;
                                    sum -= 10;
                                    autoHigh -= 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.grey[700],
                              ),
                              child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          )
                        ]
                    )),
                // Medium Junction
                Container(
                    color: Colors.deepPurple[300],
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                            child: Text(
                                "Medium Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                              child: Text("$autoMed", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  autoScore += 8;
                                  sum += 8;
                                  autoMed += 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.black54,
                              ),
                              child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (autoMed > 0) {
                                    autoScore -= 8;
                                    sum -= 8;
                                    autoMed -= 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.grey[700],
                              ),
                              child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          )
                        ]
                    )),
                // Low Junction
                Container(
                    color: Colors.deepPurple,
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                            child: Text(
                                "Low Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                              child: Text("$autoLow", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  autoScore += 6;
                                  sum += 6;
                                  autoLow += 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.black54,
                              ),
                              child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (autoLow > 0) {
                                    autoScore -= 6;
                                    sum -= 6;
                                    autoLow -= 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.grey[700],
                              ),
                              child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          )
                        ]
                    )),
                // Ground Junction
                Container(
                    color: Colors.deepPurple[300],
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                            child: Text(
                                "Ground Junction", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                              child: Text("$autoGrnd", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  autoScore += 4;
                                  sum += 4;
                                  autoGrnd += 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.black54,
                              ),
                              child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (autoGrnd > 0) {
                                    autoScore -= 4;
                                    sum -= 4;
                                    autoGrnd -= 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.grey[700],
                              ),
                              child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          )
                        ]
                    )),
                Container(
                    color: Colors.deepPurple,
                    child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                            child: Text(
                                "Terminal", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                              child: Text("$autoTerm", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  autoScore += 2;
                                  sum += 2;
                                  autoTerm += 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.black54,
                              ),
                              child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (autoTerm > 0) {
                                    autoScore -= 2;
                                    sum -= 2;
                                    autoTerm -= 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                minimumSize: const Size(40, 40),
                                backgroundColor: Colors.grey[700],
                              ),
                              child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                            ),

                          )
                        ]
                    )),
                Container(color: Colors.deepPurple[300],
                    child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Parking 1", style: TextStyle(fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold)),),
                      Spacer(),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(100, 35),
                                    backgroundColor: terminalPark ? Colors.yellow[800] : Colors.black54,
                                  ),
                                  child: Text("Terminal"),
                                  onPressed: () {
                                    setState(() {
                                      if (zonePark) {
                                        if (customZone) {
                                          sum -= 20;
                                          autoScore -= 20;
                                        } else {
                                          sum -= 10;
                                          autoScore -= 10; }
                                      }
                                      if (!terminalPark) {
                                        sum += 2;
                                        autoScore += 2;
                                        terminalPark = true;
                                        zonePark = false;
                                        customZone = false;
                                      } else {
                                        sum -= 2;
                                        autoScore -= 2;
                                        terminalPark = false;
                                      }});
                                  },

                                )
                            ),
                            Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(80, 25),
                                          backgroundColor: customZone ? Colors.yellow[800] : Colors.black54,
                                        ),
                                        child: Text("Custom"),
                                        onPressed: () {
                                          setState(() {
                                            if (!customZone) {
                                              if (terminalPark) {
                                                sum -= 2;
                                                autoScore -= 2;
                                              }
                                              customZone = true;
                                              terminalPark = false;
                                              if (zonePark) {
                                                sum += 10;
                                                autoScore += 10; }
                                            } else {
                                              if (zonePark) {
                                                sum -= 10;
                                                autoScore -= 10;
                                              }
                                              customZone = false;
                                            }

                                          });
                                        },

                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(100, 35),
                                            backgroundColor: zonePark ? Colors.yellow[800] : Colors.black54,
                                          ),
                                          child: Text("Zone"),
                                          onPressed: () {
                                            setState(() {
                                              if (terminalPark) {
                                                sum -= 2;
                                                autoScore -= 2;
                                              }
                                              if (customZone) {
                                                if (!zonePark) {
                                                  sum += 20;
                                                  autoScore += 20;
                                                  zonePark = true;
                                                  terminalPark = false;
                                                } else {
                                                  sum -= 20;
                                                  autoScore -= 20;
                                                  zonePark = false;
                                                  customZone = false;
                                                }
                                              } else {
                                                if (!zonePark) {
                                                  sum += 10;
                                                  autoScore += 10;
                                                  zonePark = true;
                                                  terminalPark = false;
                                                } else {
                                                  sum -= 10;
                                                  autoScore -= 10;
                                                  zonePark = false;
                                                }
                                              }
                                            });
                                          }

                                      )
                                  ),
                                ]
                            ),


                          ]
                      )


                    ])),
                SizedBox(height: 25.0, ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Parking 2", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(100, 35),
                                    backgroundColor: terminalPark2 ? Colors.indigo : Colors.grey,
                                  ),
                                  child: Text("Terminal"),
                                  onPressed: () {
                                    setState(() {
                                      if (zonePark2) {
                                        if (customZone2) {
                                          sum -= 20;
                                          autoScore -= 20;
                                        } else {
                                          sum -= 10;
                                          autoScore -= 10; }
                                      }
                                      if (!terminalPark2) {
                                        sum += 2;
                                        autoScore += 2;
                                        terminalPark2 = true;
                                        zonePark2 = false;
                                        customZone2 = false;
                                      } else {
                                        sum -= 2;
                                        autoScore -= 2;
                                        terminalPark2 = false;
                                      }});
                                  },

                                )
                            ),
                            Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(80, 25),
                                          backgroundColor: customZone2 ? Colors.indigo : Colors.grey,
                                        ),
                                        child: Text("Custom"),
                                        onPressed: () {
                                          setState(() {
                                            if (!customZone2) {
                                              if (terminalPark2) {
                                                sum -= 2;
                                                autoScore -= 2;
                                              }
                                              customZone2 = true;
                                              terminalPark2 = false;
                                              if (zonePark2) {
                                                sum += 10;
                                                autoScore += 10; }
                                            } else {
                                              if (zonePark2) {
                                                sum -= 10;
                                                autoScore -= 10;
                                              }
                                              customZone2 = false;
                                            }

                                          });
                                        },

                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(100, 35),
                                            backgroundColor: zonePark2 ? Colors.indigo : Colors.grey,
                                          ),
                                          child: Text("Zone"),
                                          onPressed: () {
                                            setState(() {
                                              if (terminalPark2) {
                                                sum -= 2;
                                                autoScore -= 2;
                                              }
                                              if (customZone2) {
                                                if (!zonePark2) {
                                                  sum += 20;
                                                  autoScore += 20;
                                                  zonePark2 = true;
                                                  terminalPark2 = false;
                                                } else {
                                                  sum -= 20;
                                                  autoScore -= 20;
                                                  zonePark2 = false;
                                                  customZone2 = false;
                                                }
                                              } else {
                                                if (!zonePark2) {
                                                  sum += 10;
                                                  autoScore += 10;
                                                  zonePark2 = true;
                                                  terminalPark2 = false;
                                                } else {
                                                  sum -= 10;
                                                  autoScore -= 10;
                                                  zonePark2 = false;
                                                }
                                              }
                                            });
                                          }

                                      )
                                  ),
                                ]
                            ),


                          ]
                      )


                    ]),
                // Tele-Op
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 20.0),
                          child: Text("Tele-Op & EG", style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 22.0, 0.0),
                          child: Container(width: 84.0,
                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("$teleScore", style: TextStyle(fontSize: 25.0,),)])))
                    ]
                ),
                // High Junction
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "High Junction", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$teleHigh", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teleScore += 5;
                              sum += 5;
                              teleHigh += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (teleHigh > 0) {
                                teleScore -= 5;
                                sum -= 5;
                                teleHigh -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                // Medium Junction
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Medium Junction", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$teleMed", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teleScore += 4;
                              sum += 4;
                              teleMed += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (teleMed > 0) {
                                teleScore -= 4;
                                sum -= 4;
                                teleMed -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                // Low Junction
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Low Junction", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$teleLow", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teleScore += 3;
                              sum += 3;
                              teleLow += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (teleLow > 0) {
                                teleScore -= 3;
                                sum -= 3;
                                teleLow -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                // Ground Junction
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Ground Junction", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$teleGrnd", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teleScore += 2;
                              sum += 2;
                              teleGrnd += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (teleGrnd > 0) {
                                teleScore -= 2;
                                sum -= 2;
                                teleGrnd -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Terminal", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$teleTerm", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teleScore += 1;
                              sum += 1;
                              teleTerm += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (teleTerm > 0) {
                                teleScore -= 1;
                                sum -= 1;
                                teleTerm -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Circuit", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(92, 35),
                            backgroundColor: circuit ? Colors.indigo : Colors.grey,),
                          onPressed: () {
                            setState(() {
                              if (!circuit) {
                                circuit = true;
                                sum += 20;
                                teleScore += 20;
                              } else {
                                circuit = false;
                                sum -= 20;
                                teleScore -= 20;
                              }
                            });
                          },
                          child: Text("Created"),
                        ),

                      ),

                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Beaconed", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 11.0, 0.0),
                          child: Text("$beaconed2Int", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Slider(
                            value: beaconed2,
                            max: 2,
                            divisions: 2,
                            label: beaconed2.round().toInt().toString(),
                            activeColor: Colors.indigo[500],
                            inactiveColor: Colors.grey[200],
                            onChanged: (double value) {
                              setState(() {
                                beaconed2 = value;
                                sum = sum + (beaconed2.toInt() - beaconed2Int)*10;
                                teleScore = teleScore + (beaconed2.toInt() - beaconed2Int)*10;
                                beaconed2Int = beaconed2.toInt();

                              });
                            })
                      ),
                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Parking 1", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(92, 35),
                            backgroundColor: telePark ? Colors.indigo : Colors.grey,),
                          onPressed: () {
                            setState(() {
                              if (!telePark) {
                                telePark = true;
                                sum += 2;
                                teleScore += 2;
                              } else {
                                telePark = false;
                                sum -= 2;
                                teleScore -= 2;
                              }
                            });
                          },
                          child: Text("Parked"),
                        ),

                      ),
                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Parking 2", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(92, 35),
                            backgroundColor: telePark2 ? Colors.indigo : Colors.grey,),
                          onPressed: () {
                            setState(() {
                              if (!telePark2) {
                                telePark2 = true;
                                sum += 2;
                                teleScore += 2;
                              } else {
                                telePark2 = false;
                                sum -= 2;
                                teleScore -= 2;
                              }
                            });
                          },
                          child: Text("Parked"),
                        ),

                      ),
                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Capped Junctions", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 11.0, 0.0),
                          child: Text("$cappedInt", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),

                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Slider(
                              value: capped,
                              max: 25,
                              divisions: 25,
                              label: capped.round().toInt().toString(),
                              activeColor: Colors.indigo[500],
                              inactiveColor: Colors.grey[200],
                              onChanged: (double value) {
                                setState(() {
                                  capped = value;
                                  sum = sum + (capped.toInt() - cappedInt)*3;
                                  teleScore = teleScore + (capped.toInt() - cappedInt)*3;
                                  cappedInt = capped.toInt();

                                });
                              })
                      )
                    ]
                ),
                Divider (
                  height: 45.0,
                  thickness: 7.0,
                  indent: 20.0,
                  endIndent: 20.0,
                  color: Colors.indigo,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 20.0),
                          child: Text("Penalties", style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),)),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 22.0, 0.0),
                          child: Container(width: 84.0,
                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("$penalty", style: TextStyle(fontSize: 25.0,),)])))
                    ]
                ),
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Major:", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$majorPen", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              penalty -= 30;
                              sum -= 30;
                              majorPen += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (majorPen > 0) {
                                penalty += 30;
                                sum += 30;
                                majorPen -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                // Medium Junction
                Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                            "Minor Penalty", style: TextStyle(fontSize: 15.0)),),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 84.0, 0.0),
                          child: Text("$minorPen", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              penalty -= 10;
                              sum -= 10;
                              minorPen += 1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.green[500],
                          ),
                          child: Text("+", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (minorPen > 0) {
                                penalty += 10;
                                sum += 10;
                                minorPen -= 1;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: const Size(40, 40),
                            backgroundColor: Colors.red[800],
                          ),
                          child: Text("-", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),

                      )
                    ]
                ),
                SizedBox(height: 25.0),

              ])),

        ])),
                  ));
  }
}

