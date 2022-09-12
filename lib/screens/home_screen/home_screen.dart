import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:upmarkt/screens/asset_path/asset_path.dart';
import 'package:upmarkt/screens/home_screen/widgets/widgets.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<String> images=[
  'assets/images/nimage1.png',
'assets/images/nimage2.png',
'assets/images/nimage3.png',
'assets/images/nimage4.png',
'assets/images/nimage5.png',
'assets/images/nimage6.png',
 ];
int index=0;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value){
          setState(() {
            index=value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
        BottomNavigationBarItem(icon: Image.asset(AssetPath.home),
        label: '',
        ),
         BottomNavigationBarItem(icon: Image.asset(AssetPath.message),
        label: '',
        ),
         BottomNavigationBarItem(icon: Image.asset(AssetPath.basket),
        label: '',
        ),
         BottomNavigationBarItem(icon: Image.asset(AssetPath.notification),
        label: '',
        ),
         const BottomNavigationBarItem(icon:Icon(Icons.person,color: Colors.black,),
        label: '',
        ),
      ]),
    backgroundColor: const Color(0xffD9D9D9),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(18),child: Column(children: [
          Row(children: [Image.asset(AssetPath.logo,width: 93,height: 29,),
           const Spacer(),
           IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.black,)),],),
           const SizedBox(height: 12,),
           CarouselSlider(
  options: CarouselOptions(
      height: 130,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
   
      scrollDirection: Axis.horizontal,
   ),
  items: [1,2,3].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image: AssetImage(AssetPath.banner))

          ),
         
        );
      },
    );
  }).toList(),
),
   SizedBox(height: size.height*.02,),
          Container(
          
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
            child: TextField(
              
              decoration:InputDecoration(
              
               border: InputBorder.none,
                
               
                prefixIcon: Image.asset(AssetPath.search,height: 29,width: 29,)),
            ),
          ),
           SizedBox(height: size.height*.03,),
           
          
           ViewAllWidget(text: 'CATEGORIES', press: (){}),
           const  SizedBox(height: 10,),
          
           Row(
             children: [
               RoundedContainerWidget(width:155, height: 118.61, image: AssetPath.cImage1, press: (){}, ),
              const  Spacer(),
             RoundedContainerWidget(width:155, height: 118.61, image: AssetPath.cImage2, press: (){},),

             ],
           ),
           Row(
             children: [
               RoundedContainerWidget(width:155, height: 118.61, image: AssetPath.cImage3, press: (){}, ),
              const  Spacer(),
             RoundedContainerWidget(width:155, height: 118.61, image: AssetPath.cImage4, press: (){},),

             ],
           ),
           const SizedBox(height: 20,),
     ViewAllWidget(text: 'NEW ARRIVAL', press: (){}),
     const SizedBox(height: 20,),
     GridView.count(
          crossAxisCount: 3,
          
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(6, (index) {
              return Container(
                height: 122,
               
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      
                    ),
                    borderRadius:
                    const BorderRadius.all(Radius.circular(5.0),),
                  ),
              );
            },),
        ),
        const SizedBox(height: 20,),
      ViewAllWidget(text: 'DEALS', press: (){}),
      const SizedBox(height: 20,),
       SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child: Row(
               children: [
          RoundedContainerWidget(width: 115, height: 117, image: AssetPath.dImage1, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 115, height: 117, image: AssetPath.dImage2, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 115, height: 117, image: AssetPath.dImage3, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 171, height: 88, image: AssetPath.dImage4, press: (){}),
               ],
             ),
       ),
 const SizedBox(height: 20,),
      ViewAllWidget(text: 'PICK OF THE WEEK', press: (){}),
      const SizedBox(height: 20,),
Row(
             children: [
               RoundedContainerWidget(width:150, height: 155.61, image: AssetPath.pweek1, press: (){}, ),
              const  Spacer(),
             RoundedContainerWidget(width:150, height: 155.61, image: AssetPath.pweek2, press: (){},),

             ],
           ),
           const SizedBox(height: 20,),
      ViewAllWidget(text: 'DISCOUNTS OF THE WEEK', press: (){}),
      const SizedBox(height: 20,),
Row(
             children: [
               RoundedContainerWidget(width:150, height: 155.61, image: AssetPath.dweek1, press: (){}, ),
              const  Spacer(),
             RoundedContainerWidget(width:150, height: 155.61, image: AssetPath.dweek2, press: (){},),

             ],
           ),
               const SizedBox(height: 20,),
      ViewAllWidget(text: 'TRENDING', press: (){}),
      const SizedBox(height: 20,),
 SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child: Row(
               children: [
          RoundedContainerWidget(width: 153, height: 125, image: AssetPath.timage1, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 153, height: 125, image: AssetPath.timage2, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 153, height: 125, image: AssetPath.timage3, press: (){}),
  
               ],
             ),),
               const SizedBox(height: 20,),
      ViewAllWidget(text: 'TOP BRANDS', press: (){}),
      const SizedBox(height: 20,),
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child:   Row(
  
               children: [
  
        BrandWidget(image: AssetPath.brand1, press: (){}),
  
        
  
        BrandWidget(image: AssetPath.brand2, press: (){}),
  
     
  
        BrandWidget(image: AssetPath.brand3, press: (){}),
  
       
  
        BrandWidget(image: AssetPath.brand4, press: (){}),
  
       
  
  BrandWidget(image: AssetPath.brand5, press: (){}),
  
      
  
               ],
  
             ),
),
               const SizedBox(height: 20,),
      ViewAllWidget(text: 'NEWS', press: (){}),
      const SizedBox(height: 20,),
SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child: Row(
               children: [
          RoundedContainerWidget(width: 153, height: 125, image: AssetPath.news1, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 153, height: 125, image: AssetPath.news2, press: (){}),
          const SizedBox(width: 10,),
          RoundedContainerWidget(width: 153, height: 125, image: AssetPath.timage2, press: (){}),
          
               ],
             ),),
        ],),),
      )),
    );
  }
}