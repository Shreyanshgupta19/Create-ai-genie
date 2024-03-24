import 'package:create_ai_genie/FeatureBox/feature_box.dart';
import 'package:create_ai_genie/pallete.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:const Text('CREATEAIGENIE'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      margin: const EdgeInsets.only(top: 4,),
                      decoration: const BoxDecoration(
                        color: Pallete.assistantCircleColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 124,
                      margin: const EdgeInsets.only(top: 4,),
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
                  top: 30,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Pallete.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(20).copyWith(
                    topLeft: Radius.zero,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                  child: Text('Hello, what task can I do for you?',
                    style: TextStyle(color: Pallete.mainFontColor,fontSize: 25,fontFamily: 'Cera Pro'),
                  ),
                ),
              ),
              Container(
               padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 22,
                ),
                child: const Text('Here are a few features',
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),

              // features list
               const Column(
                children: [
                   FeatureBox(color: Pallete.firstSuggestionBoxColor, headerText: 'ChatGPT', descriptionText: 'A smarter way organized and informed with ChatGPT',),
                   FeatureBox(color: Pallete.secondSuggestionBoxColor, headerText: 'Dall-E', descriptionText: 'Get inspired and stay creative with your personal assistant powered assistant powered by Dall-E',),
                   FeatureBox(color: Pallete.thirdSuggestionBoxColor, headerText: 'Smart Voice Assistant', descriptionText: 'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',),
                  ],
              ),
              //   width < 600 ? const Column(
              //   children: [
              //     FeatureBox(color: Pallete.firstSuggestionBoxColor, headerText: 'ChatGPT', descriptionText: 'A smarter way organized and informed with ChatGPT',),
              //     FeatureBox(color: Pallete.secondSuggestionBoxColor, headerText: 'Dall-E', descriptionText: 'Get inspired and stay creative with your personal assistant powered assistant powered by Dall-E',),
              //     FeatureBox(color: Pallete.thirdSuggestionBoxColor, headerText: 'Smart Voice Assistant', descriptionText: 'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',),
              //   ],
              // ):const SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       Row(
              //           children: [
              //             FeatureBox(color: Pallete.firstSuggestionBoxColor, headerText: 'ChatGPT', descriptionText: 'A smarter way organized and informed with ChatGPT',),
              //             FeatureBox(color: Pallete.secondSuggestionBoxColor, headerText: 'Dall-E', descriptionText: 'Get inspired and stay creative with your personal assistant powered assistant powered by Dall-E',),
              //           ],
              //         ),
              //       FeatureBox(color: Pallete.thirdSuggestionBoxColor, headerText: 'Smart Voice Assistant', descriptionText: 'Get the best of both worlds with a voice assistant powered by Dall-E and ChatGPT',),
              //     ],
              //   ),
              // ),

            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(side: BorderSide(width: 0.1,color: Pallete.offblackColor)),
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){},
        child:const Icon(Icons.mic),
      ),

    );
  }
}