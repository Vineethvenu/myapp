class HomeModel {
  int? success;
  String? message;
  List<Banner1>? banner1;
  List<Null>? banner2;
  List<Banner3>? banner3;
  List<Banner4>? banner4;
  List<Null>? banner5;
  List<Recentviews>? recentviews;
  List<OurProducts>? ourProducts;
  List<SuggestedProducts>? suggestedProducts;
  List<BestSeller>? bestSeller;
  List<FlashSail>? flashSail;
  List<Null>? newarrivals;
  List<Categories>? categories;
  List<TopAccessories>? topAccessories;
  List<Featuredbrands>? featuredbrands;
  int? cartcount;
  int? wishlistcount;
  Currency? currency;
  int? notificationCount;

  HomeModel(
      {this.success,
      this.message,
      this.banner1,
      this.banner2,
      this.banner3,
      this.banner4,
      this.banner5,
      this.recentviews,
      this.ourProducts,
      this.suggestedProducts,
      this.bestSeller,
      this.flashSail,
      this.newarrivals,
      this.categories,
      this.topAccessories,
      this.featuredbrands,
      this.cartcount,
      this.wishlistcount,
      this.currency,
      this.notificationCount});

  HomeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['banner1'] != null) {
      banner1 = <Banner1>[];
      json['banner1'].forEach((v) {
        banner1!.add(new Banner1.fromJson(v));
      });
    }
    if (json['banner2'] != null) {
      banner2 = <Null>[];
      json['banner2'].forEach((v) {
        banner2!.add(new Null.fromJson(v));
      });
    }
    if (json['banner3'] != null) {
      banner3 = <Banner3>[];
      json['banner3'].forEach((v) {
        banner3!.add(new Banner3.fromJson(v));
      });
    }
    if (json['banner4'] != null) {
      banner4 = <Banner4>[];
      json['banner4'].forEach((v) {
        banner4!.add(new Banner4.fromJson(v));
      });
    }
    if (json['banner5'] != null) {
      banner5 = <Null>[];
      json['banner5'].forEach((v) {
        banner5!.add(new Null.fromJson(v));
      });
    }
    if (json['recentviews'] != null) {
      recentviews = <Recentviews>[];
      json['recentviews'].forEach((v) {
        recentviews!.add(new Recentviews.fromJson(v));
      });
    }
    if (json['our_products'] != null) {
      ourProducts = <OurProducts>[];
      json['our_products'].forEach((v) {
        ourProducts!.add(new OurProducts.fromJson(v));
      });
    }
    if (json['suggested_products'] != null) {
      suggestedProducts = <SuggestedProducts>[];
      json['suggested_products'].forEach((v) {
        suggestedProducts!.add(new SuggestedProducts.fromJson(v));
      });
    }
    if (json['best_seller'] != null) {
      bestSeller = <BestSeller>[];
      json['best_seller'].forEach((v) {
        bestSeller!.add(new BestSeller.fromJson(v));
      });
    }
    if (json['flash_sail'] != null) {
      flashSail = <FlashSail>[];
      json['flash_sail'].forEach((v) {
        flashSail!.add(new FlashSail.fromJson(v));
      });
    }
    if (json['newarrivals'] != null) {
      newarrivals = <Null>[];
      json['newarrivals'].forEach((v) {
        newarrivals!.add(new Null.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['top_accessories'] != null) {
      topAccessories = <TopAccessories>[];
      json['top_accessories'].forEach((v) {
        topAccessories!.add(new TopAccessories.fromJson(v));
      });
    }
    if (json['featuredbrands'] != null) {
      featuredbrands = <Featuredbrands>[];
      json['featuredbrands'].forEach((v) {
        featuredbrands!.add(new Featuredbrands.fromJson(v));
      });
    }
    cartcount = json['cartcount'];
    wishlistcount = json['wishlistcount'];
    currency = json['currency'] != null
        ? new Currency.fromJson(json['currency'])
        : null;
    notificationCount = json['notification_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.banner1 != null) {
      data['banner1'] = this.banner1!.map((v) => v.toJson()).toList();
    }
    if (this.banner2 != null) {
      data['banner2'] = this.banner2!.map((v) => v.toJson()).toList();
    }
    if (this.banner3 != null) {
      data['banner3'] = this.banner3!.map((v) => v.toJson()).toList();
    }
    if (this.banner4 != null) {
      data['banner4'] = this.banner4!.map((v) => v.toJson()).toList();
    }
    if (this.banner5 != null) {
      data['banner5'] = this.banner5!.map((v) => v.toJson()).toList();
    }
    if (this.recentviews != null) {
      data['recentviews'] = this.recentviews!.map((v) => v.toJson()).toList();
    }
    if (this.ourProducts != null) {
      data['our_products'] = this.ourProducts!.map((v) => v.toJson()).toList();
    }
    if (this.suggestedProducts != null) {
      data['suggested_products'] =
          this.suggestedProducts!.map((v) => v.toJson()).toList();
    }
    if (this.bestSeller != null) {
      data['best_seller'] = this.bestSeller!.map((v) => v.toJson()).toList();
    }
    if (this.flashSail != null) {
      data['flash_sail'] = this.flashSail!.map((v) => v.toJson()).toList();
    }
    if (this.newarrivals != null) {
      data['newarrivals'] = this.newarrivals!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.topAccessories != null) {
      data['top_accessories'] =
          this.topAccessories!.map((v) => v.toJson()).toList();
    }
    if (this.featuredbrands != null) {
      data['featuredbrands'] =
          this.featuredbrands!.map((v) => v.toJson()).toList();
    }
    data['cartcount'] = this.cartcount;
    data['wishlistcount'] = this.wishlistcount;
    if (this.currency != null) {
      data['currency'] = this.currency!.toJson();
    }
    data['notification_count'] = this.notificationCount;
    return data;
  }
}

class Banner1 {
  int? id;
  int? linkType;
  String? linkValue;
  String? image;
  String? title;
  String? subTitle;
  Null? logo;

  Banner1(
      {this.id,
      this.linkType,
      this.linkValue,
      this.image,
      this.title,
      this.subTitle,
      this.logo});

  Banner1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    linkType = json['link_type'];
    linkValue = json['link_value'];
    image = json['image'];
    title = json['title'];
    subTitle = json['sub_title'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link_type'] = this.linkType;
    data['link_value'] = this.linkValue;
    data['image'] = this.image;
    data['title'] = this.title;
    data['sub_title'] = this.subTitle;
    data['logo'] = this.logo;
    return data;
  }
}

class Recentviews {
  int? productId;
  String? slug;
  String? code;
  String? homeImg;
  String? name;
  int? isGender;
  String? store;
  String? manufacturer;
  String? oldprice;
  String? price;
  String? image;
  int? cart;
  int? wishlist;

  Recentviews(
      {this.productId,
      this.slug,
      this.code,
      this.homeImg,
      this.name,
      this.isGender,
      this.store,
      this.manufacturer,
      this.oldprice,
      this.price,
      this.image,
      this.cart,
      this.wishlist});

  Recentviews.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    slug = json['slug'];
    code = json['code'];
    homeImg = json['home_img'];
    name = json['name'];
    isGender = json['is_gender'];
    store = json['store'];
    manufacturer = json['manufacturer'];
    oldprice = json['oldprice'];
    price = json['price'];
    image = json['image'];
    cart = json['cart'];
    wishlist = json['wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['slug'] = this.slug;
    data['code'] = this.code;
    data['home_img'] = this.homeImg;
    data['name'] = this.name;
    data['is_gender'] = this.isGender;
    data['store'] = this.store;
    data['manufacturer'] = this.manufacturer;
    data['oldprice'] = this.oldprice;
    data['price'] = this.price;
    data['image'] = this.image;
    data['cart'] = this.cart;
    data['wishlist'] = this.wishlist;
    return data;
  }
}

class Categories {
  Category? category;

  Categories({this.category});

  Categories.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? slug;
  String? image;
  String? name;
  String? description;

  Category({this.id, this.slug, this.image, this.name, this.description});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['image'] = this.image;
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }
}

class Featuredbrands {
  int? id;
  String? image;
  String? slug;
  String? name;

  Featuredbrands({this.id, this.image, this.slug, this.name});

  Featuredbrands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['slug'] = this.slug;
    data['name'] = this.name;
    return data;
  }
}

class Currency {
  String? name;
  String? code;
  String? symbolLeft;
  String? symbolRight;
  String? value;
  int? status;

  Currency(
      {this.name,
      this.code,
      this.symbolLeft,
      this.symbolRight,
      this.value,
      this.status});

  Currency.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    symbolLeft = json['symbol_left'];
    symbolRight = json['symbol_right'];
    value = json['value'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['symbol_left'] = this.symbolLeft;
    data['symbol_right'] = this.symbolRight;
    data['value'] = this.value;
    data['status'] = this.status;
    return data;
  }
}
