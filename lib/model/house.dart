class House {
  String name;
  String address;
  String imageurl;
  House(this.name,this.address,this.imageurl);
  static List<House> generateRecommended(){
return[
  House(("Ali Shan's House"), "Khanewal,Pirowal,76/10.R",
      "assets/images/house01.jpeg"),
  House(("Ali Shan's House"), "Khanewal,Pirowal,76/10.R",
      "assets/images/house02.jpeg"),
  House(("Ali Shan's House"), "Khanewal,Pirowal,76/10.R",
      "assets/images/offer01.jpeg"),
  House(("Ali Shan's House"), "Khanewal,Pirowal,76/10.R",
      "assets/images/offer02.jpeg"),
];
  }

}

