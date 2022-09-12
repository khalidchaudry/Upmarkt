import 'package:flutter/material.dart';
import 'package:upmarkt/screens/asset_path/asset_path.dart';
import 'package:upmarkt/screens/home_screen/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(leading: Image.asset(AssetPath.logo,width: 93,height: 29,),
      actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu))],
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(18),child: Column(children: [
          TextField(
            
            decoration:InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search here',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              suffixIcon: Image.asset(AssetPath.search,height: 29,width: 29,)),
          ),
           SizedBox(height: size.height*2,),
          //  PageView.builder(
          //   itemBuilder: (context, index) {
          //    return PageView(
          //     children: [
          //       Image.asset(AssetPath.banner,width: 324,height: 101,),
          //        Image.asset(AssetPath.banner,width: 324,height: 101,),
          //         Image.asset(AssetPath.banner,width: 324,height: 101,),
          //     ],
          //    );
          //  }),
           SizedBox(height: size.height*2,),
           ViewAllWidget(text: 'CATEGORIES', press: (){}),
           
           RoundedContainerWidget(width: 155.04, height: 118.61, image: AssetPath.cImage1, press: (){}, borderRadius: 5.0),
      
        ],),),
      )),
    );
  }
}