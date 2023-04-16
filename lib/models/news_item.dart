import '../constants/constant_image.dart';

class NewsItem
{
final String imgUrl;
final int id;
final String title;
final String category;
final String desc;
final String author;
NewsItem({required this.imgUrl,required this.id,required this.title,required this.category,required this.desc,required this.author});

// NewsItem copyWith({
//   int? id,
//   String? title,
//   String? imgUrl,
//   String? category,
//   String? author,
//   String? time,
//   bool? isFavorite,
//   String? desc
// }) {
//   return NewsItem(
//     id: id ?? this.id,
//     title: title ?? this.title,
//     imgUrl: imgUrl ?? this.imgUrl,
//     category: category ?? this.category,
//     author: author ?? this.author,
//     // time: time ?? this.time,
//     desc: desc ?? this.desc,
//   );
// }
}

List<NewsItem>news=[
  NewsItem(imgUrl: '$CarsorImag', id: 1, title: 'there is good title here title hhhhhhhhhh ', category: 'Sports',author: 'CNN',desc: 'mmmm'),
  NewsItem(imgUrl: '$CarsorImag', id: 2, title: 'there is good title here title', category: 'Medical',author:'CNN',desc: "mm"),
  NewsItem(imgUrl: '$CarsorImag', id: 3, title: 'there is good title here title', category: 'Policy', author:'BBC' ,desc: 'mm'),
  NewsItem(imgUrl: '$CarsorImag', id: 4, title: 'there is good title here title', category: 'Economy',author:'MBC' ,desc:'mm')

];


