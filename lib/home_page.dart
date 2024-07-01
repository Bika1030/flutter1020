import "package:flutter/foundation.dart";
import "package:flutter/material.dart";



// class HomePage extends StatelessWidget {
  
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text(  
//             "Button",
//           ),
//           onPressed: () {},
//         ),
        
//      ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   
  
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  bool haruulah = true;
   

  void  onSubmit(){
    setState(() {
      haruulah =  !haruulah; 
    });
  }
       
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: haruulah,
              child: Text("Hello"),
            ),
            ElevatedButton(
              onPressed: onSubmit,
              child: Text("Toggle"),
            ),
          ],
        ),
      ),
      
    );
  }
}