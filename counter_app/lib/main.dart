import "package:flutter/material.dart";

void main(){
  runApp(
    MaterialApp(
      home:HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget{
  
 Widget build(BuildContext context){
 print("Rerun");

 return Scaffold(
appBar: AppBar(
  backgroundColor: Color.fromARGB(255, 46, 46, 40),
  toolbarHeight: 90, // increase AppBar height
  flexibleSpace: Padding(
    padding: const EdgeInsets.only(left: 16, top: 39), // push text a bit down
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Home Screen of Counter APP",
          style: TextStyle(
            fontSize: 20,
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4), // small gap between lines
        Text(
          "This a Simple counter App and first project by Saksham Khadka undergraduate student of BCSIT",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    ),
  ),
)



     ,
   body:SafeArea(
    child: Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Container(
            width: 500,
            height: 440,
            decoration:BoxDecoration(
              color: Colors.purple,
              // borderRadius:BorderRadius.circular(200),
              image: DecorationImage(
              fit:BoxFit.cover,
              image:NetworkImage("https://m.media-amazon.com/images/I/71QHHE5+9LL.png"),
              
              ),
            )
          ),
          Text("Counter App",
          style:TextStyle(
            fontSize:40,
            color: Colors.amber,

          ),
          ),
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed:()=>{
             Navigator.push(
              context,
              MaterialPageRoute(
               builder: (context)=>CounterScreen(),
              ),
             ),
            },
            onLongPress:() => {
              print("Button has been long pressed"),
            }
            ,
            child:Text("Go to next Screen"),
          ),
        ],
      ),
    ),
   ),

 );
  

 }

}

class CounterScreen extends StatefulWidget{
  
  _CounterScreenState createState()=> _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{

  int count=0;
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar:AppBar(
        title: Text("Counter Screen",style: 
        TextStyle(
          fontSize: 20,
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        )
        ,),


        backgroundColor: Colors.purple,
      ),
      backgroundColor: const Color.fromARGB(255, 61, 16, 16),

      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text(
                "In this page the count will increase by 1 and decrease by 1",
                style: TextStyle(fontSize: 16, color: const Color.fromARGB(221, 14, 150, 57)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80),
              Text("Counter Game By saksham Khadka",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
              ),
              ),

              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    ),

                    onPressed: ()=>{
                      setState((){
                       count++;
                      }),
                    },

                    child: Text("Increment",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  SizedBox(width:30),
                 
                  Text("$count",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  ),
                  SizedBox(width: 30,height: 20,),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    ),
                    onPressed:()=>{
                      setState((){
                        count--;
                      }),
                    },
                    child: Text("Decrement",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),

                  SizedBox(width: 20,),
                ],
              )
            ],
          ),
        ),
      )
       
    

    );
  }


}




// class CounterScreen extends StatefulWidget{

  
 
//  Widget build(BuildContext context){
//   return Scaffold(
//        appBar:AppBar(
//         title: Text(
//           "Counter Screen",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.blueAccent,
//             fontWeight:FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.purple,
//        )
       
//        ,
      

//     body:SafeArea(
//       child:Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("Welcome to counter game made by saksham ",
//             style:TextStyle(
//               fontSize: 18,
//               color:  Colors.blueAccent,
//             )
//             ),

//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.amber,
//                 padding: EdgeInsets.symmetric(horizontal:30,vertical:15),
//               ),
//               onPressed:()=>{
//                 print("First button is clicked"),
//               },
//               child: Text("First Button",style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),),

//             ),
//            ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.amber,
//               padding: EdgeInsets.symmetric(horizontal:30,vertical:15),
//             ),
//             onPressed: ()=>{
//               print("Second button has been clicked"),
//             },
//             child: Text("Second Button",
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),),
//            )

//             ,
      
//           ],
//         ),
//       ),
      
//     ),
//   );

//  }

// }