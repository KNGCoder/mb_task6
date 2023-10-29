import 'package:flutter/material.dart';
import 'package:mb_task6/play_animation_widget.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
 
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assetName'),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(.3)
                          ]
                        )
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             PlayAnimationWidget(
                              delay: 1, 
                              child: Text(
                                'sdfghjkl',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                   fontSize: 40),
                              )),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  PlayAnimationWidget(
                                    delay: 1.2, 
                                    child: Text(
                                      '800 gaidov ghjkl', 
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16
                                      ),
                                  )),
                                  SizedBox(width: 10,),
                                  PlayAnimationWidget(
                                    delay: 1.2, 
                                    child:  Text(
                                      '50 mln plying', 
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16
                                      ),
                                  ))
                                ],
                              )
                          ],
                        ), 
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const PlayAnimationWidget(
                          delay: 1.6, 
                          child: Text(
                            'text text text text text text text text text ',
                            style: TextStyle(
                              color: Colors.grey,
                              height: 1.4
                            ),
                        )),
                        const SizedBox(height: 40,),
                        const PlayAnimationWidget(
                          delay: 1.6, 
                          child: Text(
                            'Tip ataki',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            )
                          )),
                          const SizedBox(height: 10,),
                          const Row (
                            children: [
                              Icon(
                                Icons.center_focus_strong,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10,),
                              PlayAnimationWidget(
                          delay: 1.6, 
                          child: Text(
                            'Blizni boi ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              )
                            )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          const PlayAnimationWidget(
                          delay: 1.6, 
                          child: Text(
                            'SLOZNOSTi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                              )
                            )),
                            const SizedBox(height: 10,),
                            const Row (
                            children: [
                              PlayAnimationWidget(
                              delay: 1.6, 
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),),
                              SizedBox(width: 5,),
                              PlayAnimationWidget(
                              delay: 1.6, 
                              child: Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),),
                            ],
                          ),
                           const SizedBox(height: 20,),
                           const PlayAnimationWidget(
                            delay: 1.6, 
                            child: Text(
                              'video',
                              style: TextStyle(
                               color: Colors.white,
                               fontSize: 18,
                                fontWeight: FontWeight.bold
                                )
                             )),
                             const SizedBox(height: 20,),
                              PlayAnimationWidget(
                                delay: 1.6, 
                                child: Container(
                                  height: 200,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      makeVideoWidget(
                                        imagePath: ' vidyhi'),
                                      makeVideoWidget(
                                        imagePath: ' vidyhi'),
                                      makeVideoWidget(
                                        imagePath: ' vidyhi'),
                                    ],
                                  ),
                              )),
                            const SizedBox(height: 120,),  
                      ]
                    ),
                  )
                ])
                )
            ],
          ),
          Positioned.fill(
            bottom : 20,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: PlayAnimationWidget(
                delay: 2, 
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red[400]
                  ),
                  child: const Align(
                    child: Text('Полная история', style: TextStyle(color: Colors.white),),
                  ),
                )),
            ))
        ],
      ),
    );
  }
}

Widget makeVideoWidget ({imagePath}) {
  return AspectRatio(
    aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.3)
            ]
            ),
          ),
          child: const Align(
            child: Icon(
              Icons.play_circle,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
}