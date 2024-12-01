import 'package:flutter/material.dart';
import 'package:whatsapp/login_screen.dart';
import 'package:whatsapp/text_widget.dart';

class WhatsScreen extends StatelessWidget {
  static const String routeName = 'whats';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF168C4B),
        leading: GestureDetector(
          onTap:() {
            Navigator.pop(context);
            }
          ,child: const Icon(Icons.arrow_back_ios_new,
          color: Colors.white,),
        ),
        title:  Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                radius: 18,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/arcane.webp',
                    fit: BoxFit.cover,
                    width: 36,
                    height: 36,
                  ),
                ),
              ),
            ),
            const Text('Kareem Abdelaziz',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                )
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.phone,
                 color: Colors.white,),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.video_camera_front_outlined,
                color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu,
                color: Colors.white),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/iPhone 16 - 1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextWidget(text: 'Hello ! ', direction: 'left'),
                TextWidget(text: 'Hello !', direction: 'right'),
                TextWidget(text: 'The quick brown fox jumps over the lazy dog.'
                    ' This sentence is often used to test fonts and typefaces because it contains all the letters of the English alphabet. '
                    'However, in addition to being a program, '
                    'it also provides an interesting challenge for designers as it requires a careful balance of font size,'
                    ' line height, and spacing to ensure that each letter remains legible and distinct.',
                    direction: 'left'),
                TextWidget(image:'assets/images/arcane.webp' ,text: 'Hello !', direction: 'right'),
                TextWidget(text: 'Damn that is my fav series !', direction: 'left'),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/iPhone 16 - 1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    suffixIcon: const Icon(Icons.send_rounded,color: Colors.white,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: const  OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF168C4B),
                child:  Icon(
                  Icons.mic,
                  color: Colors.white, // Mic icon color
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

