

class Product{
  final int id, price ;
  final String title, subTitle, description , image;

Product({
  required this.id ,
  required this.price ,
 required this.title ,
 required this.subTitle ,
  required this.description ,
  required this.image });

}

List<Product> products = [
Product(
  id: 1,
  price: 59,
  title: 'Air Pods3',
  subTitle: 'نضمن لك جودة منتجاتنا' ,
  image: 'images/AirPods3.png',
   description: 'جودة عالية منتج ممتاز و رائع ',

),
Product(
  id: 2,
  price: 5099,
  title: 'iphone 15',
  subTitle: 'نضمن لك جودة منجاحتنا',
  image: 'images/pngwing.com.png' ,
   description: 'ايفون بحجم كبير لون اسود',

),Product(
  id: 3,
  price: 3400,
  title: 'Headphones',
  subTitle: 'نضمن لك جودة منتجاتنا ', 
  image: 'images/applehaedphone.png',
   description: 'صوت رائع و واضح و عازله للصوت الخارجي ',

),Product(
  id: 4,
  price: 6800,
  title: 'cameraa pro',
  subTitle: 'نضمن لك جودة منتاجتنا', 
  image: 'images/camera4.png',
   description: 'كاميرا عالية الجودة و التصوير رائعه للمصورين المحترفين ',

),Product(
  id: 5,
  price: 4600,
  title: 'Apple Watch ',
  subTitle: 'نضمن لك جودة منتجاتنا', 
  image: 'images/applewatch22.png',
   description: ' ساعة ابل مصممة باطار مريح و رائع تأتي بألوان عديدة لتناسب جميع الاذواق ',

),Product(
  id: 6,
  price: 7800,
  title: 'speaker proo',
  subTitle: 'نضمن لك جودة منتجاتنا', 
  image: 'images/speaker.png',
   description: ' صوت عالي و جودة ممتازه',

),
];