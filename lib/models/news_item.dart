import '../constants/constant_image.dart';

class NewsItem
{
final String imgUrl;
final String id;
final String title;
final String category;

NewsItem({required this.imgUrl,required this.id,required this.title,required this.category});


}
List<NewsItem>news=[
  NewsItem(imgUrl: '$CarsorImag', id: 'id', title: 'title', category: 'Sports'),
  NewsItem(imgUrl: '$CarsorImag', id: 'id', title: 'title', category: 'Medical'),
  NewsItem(imgUrl: '$CarsorImag', id: 'id', title: 'title', category: 'Policy'),
  NewsItem(imgUrl: '$CarsorImag', id: 'id', title: 'title', category: 'Economy'),
  NewsItem(imgUrl: '$CarsorImag', id: 'id', title: 'title', category: 'Tourism'),
  // NewsItem(imgUrl: '$CarsorImag', id: 'id', title: 'title', category: 'category')

];


