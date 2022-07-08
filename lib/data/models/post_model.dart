class PostModel{

  final String name;
  final String timeAgo;
  final String userImg;
  final String postTxt;
  final String? postImg;

  PostModel({
    required this.name,
    required this.timeAgo,
    required this.userImg,
    required this.postTxt,
    this.postImg
  });

}