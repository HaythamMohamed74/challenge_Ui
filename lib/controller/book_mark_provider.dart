import 'package:challenge_ui/models/news_item.dart';
import 'package:flutter/cupertino.dart';

class BookMarks extends ChangeNotifier{



  List<NewsItem>markslist=[];
  // void addmarks(NewsItem model,){
  //     markslist.contains(model)?
  //     deleteMarks(markslist.indexOf(model)):
  //     markslist.add(model);
  //     debugPrint(markslist.toString());
  //     notifyListeners();
  //
  // }
  void deleteMarks(int index){
    markslist.removeAt(index);
    notifyListeners();
  }
 // bool isselected=false;
 //  Icontoggle(){
 //    isselected=!isselected;
 //  }
  void toggleBookmark(NewsItem model) {
    bool isMarked = markslist.contains(model);
    if (isMarked) {
      // If the model is already in the markslist, remove it
      deleteMarks(markslist.indexOf(model));
    } else {
      // If the model is not in the markslist, add it
      markslist.add(model);
    }
    notifyListeners();
  }
  bool isBookmarked(NewsItem model) {
    return markslist.contains(model);
  }



}


