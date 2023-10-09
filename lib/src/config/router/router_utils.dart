enum PAGES {
  // Entry Pages
  onboarding,
  loadingUser,
  login,
  register,

  // User's Pages
  bottomNavigationBar,
  home,
  profile,
  settings,

  // Listing Modules Pages
  // Booked
  serviceList,
  serviceDetails,

  // Venue
  venueList,
  venueDetails,

  // Item
  itemList,
  itemDetails,

  // Promotions
  promotion,
  addPromotionForm,
  promotionDetails,

  // Payments
  paymentList,
  paymentDetails,
}

// A class to represent information about a page, including its screenPath and screenName.
class PageInfo {
  final String screenPath;
  final String screenName;

  const PageInfo({required this.screenPath, required this.screenName});
}

// An extension on the PAGES enum to provide a mapping of enum values to PageInfo objects.
extension RouteUtilities on PAGES {
  // A static map that associates each PAGES enum value with its PageInfo object.
  static const Map<PAGES, PageInfo> pageDetails = {
    // Entry Pages
    PAGES.onboarding:
        PageInfo(screenPath: "/onboarding", screenName: "ON BOARDING"),
    PAGES.loadingUser:
        PageInfo(screenPath: "/loadingUser", screenName: "LOADING USER"),
    PAGES.login: PageInfo(screenPath: "/login", screenName: "LOGIN"),

    // User's Pages
    PAGES.bottomNavigationBar: PageInfo(
        screenPath: "/bottomNavigationBar",
        screenName: "BOTTOM NAVIGATION BAR"),
    PAGES.home: PageInfo(screenPath: "/home", screenName: "HOME"),
    PAGES.settings: PageInfo(screenPath: "/settings", screenName: "SETTINGS"),
    PAGES.profile: PageInfo(screenPath: "/profile", screenName: "PROFILE"),

    // Listing Modules Pages
    // Booked
    PAGES.serviceList: PageInfo(screenPath: "/booked", screenName: "BOOKED"),
    PAGES.serviceDetails:
        PageInfo(screenPath: "/bookedDetails", screenName: "BOOKED DETAILS"),

    // Promotion
    PAGES.promotion:
        PageInfo(screenPath: "/promotion", screenName: "PROMOTION"),
    PAGES.addPromotionForm:
        PageInfo(screenPath: "/addPromotion", screenName: "ADD PROMOTION FORM"),
    PAGES.promotionDetails: PageInfo(
        screenPath: "/promotionDetails", screenName: "PROMOTION DETAILS"),

    // Venue
    PAGES.venueList:
        PageInfo(screenPath: "/venueList", screenName: "VENUE LIST"),
    PAGES.venueDetails:
        PageInfo(screenPath: "/venueDetails", screenName: "VENUE DETAILS"),

    // Courts
    PAGES.itemList:
        PageInfo(screenPath: "/courtList", screenName: "COURT LIST"),
    PAGES.itemDetails:
        PageInfo(screenPath: "/courtDetails", screenName: "COURT DETAILS"),

    // Payments
  };

  // A getter to retrieve the screenPath for the current PAGES enum value.
  String get screenPath => pageDetails[this]?.screenPath ?? "/error-404";

  // A getter to retrieve the screenName for the current PAGES enum value.
  String get screenName =>
      pageDetails[this]?.screenName ?? "ERROR NOT FOUND: 404";
}
