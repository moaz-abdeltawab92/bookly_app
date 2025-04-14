abstract class HomeRepo {
  //Repo Pattern is just used to create methods,
  //but without implementation and what Feature will do
  Future<void> fetchBestSellerBooks();
  Future<void> fetchFeaturedBooks();
}
