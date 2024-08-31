class Comment {
  String userAvatarUrl;
  String datePost;
  String imageUrl;
  String comment;
  double startRate;

  Comment({
    required this.imageUrl,
    required this.comment,
    required this.startRate,
    required this.datePost,
    required this.userAvatarUrl,
  });
}
