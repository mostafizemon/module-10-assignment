import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Greeting App"),
        backgroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text("Hello,World", textAlign: TextAlign.center,style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),),
              const SizedBox(height: 10,),
              const Text("Welcome to Flutter", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,
              ),),
              const SizedBox(height: 10,),

              Image.network("https://img.icons8.com/?size=100&id=pCvIfmctRaY8&format=png&color=000000",
                width: 200,
                height: 200,
                fit: BoxFit.fill,

              ),

              const SizedBox(height: 20,),

              ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Button Pressed!"),
                        duration: const Duration(seconds: 2),
                      ),
                    );
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
                  child: const Text("Press Me",textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
              )
            ],
          ),
        ),
      ),

    );
  }
}
