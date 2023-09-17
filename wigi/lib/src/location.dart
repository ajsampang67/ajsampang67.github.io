class WigiLocation {
  String name = "name";
  String address = "address";
  String s3Bucket = "https://ajsampangdotcom.s3.amazonaws.com/wigi/1/";
  int numImages = 0;
  String description = "description";
  double latitude = 0.0;
  double longitude = 0.0;
  List<DateTime> dates = <DateTime>[];

  WigiLocation(this.name, this.address, this.s3Bucket, this.numImages,
      this.description, this.latitude, this.longitude, this.dates);
}
