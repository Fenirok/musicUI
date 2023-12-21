import 'package:flutter/material.dart';
import 'package:muiscui/neumorphic_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Center(
        // this custom widget contains the NEUMORPHIC design
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                //back button & menu button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.arrow_back)),
                    ),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.menu)),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // cover name, artist name, song name
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              const Image(image: AssetImage('lib/assets/image.jpg'))),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tum Na Mile',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade700),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Arijit Singh',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite_outlined,
                              color: Colors.red[900],
                              size: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0:00'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('4.22'),
                  ],
                ),

                const SizedBox(height: 30),

                NeuBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: LinearPercentIndicator(
                      lineHeight: 6,
                      percent: 0.8,
                      progressColor: Colors.green,
                      backgroundColor: Colors.transparent,
                      curve: Curves.linear,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_previous, size: 32,),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                            child: Icon(Icons.play_arrow, size: 32),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_next, size: 32),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
