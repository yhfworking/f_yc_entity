class FYcEntitysRemoteConfig {
  final FYcEntitysRemoteConfigAd? ad;
  final FYcEntitysRemoteConfigShare? share;
  final FYcEntitysRemoteConfigVersion? version;
  final List<FYcEntitysRemoteConfigApp>? apps;

  const FYcEntitysRemoteConfig({this.ad, this.share, this.version, this.apps});

  factory FYcEntitysRemoteConfig.fromJson(Map<String, dynamic> json) {
    List<FYcEntitysRemoteConfigApp>? apps = <FYcEntitysRemoteConfigApp>[];
    if (json['apps'] != null) {
      json['apps'].forEach((v) {
        apps.add(FYcEntitysRemoteConfigApp.fromJson(v));
      });
    }
    FYcEntitysRemoteConfig entitysRemoteConfig = FYcEntitysRemoteConfig(
        ad: FYcEntitysRemoteConfigAd.fromJson(json["ad"] ?? {}),
        share: FYcEntitysRemoteConfigShare.fromJson(json["share"] ?? {}),
        version: FYcEntitysRemoteConfigVersion.fromJson(json["version"] ?? {}),
        apps: apps);
    return entitysRemoteConfig;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map.from({
      "ad": ad!.toJson(),
      "share": share!.toJson(),
      "version": version!.toJson()
    });
    if (apps != null) {
      data['apps'] = apps!.map((v) => v.toJson()).toList();
    } else {
      data['apps'] = [];
    }
    return data;
  }
}

class FYcEntitysRemoteConfigVersion {
  final String? title;
  final String? note;
  final String? url;
  final String? version;

  const FYcEntitysRemoteConfigVersion(
      {this.title, this.note, this.url, this.version});

  factory FYcEntitysRemoteConfigVersion.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigVersion(
          title: json["title"] ?? '',
          note: json["note"] ?? '',
          url: json["url"] ?? '',
          version: json["version"] ?? '');

  Map<String, dynamic> toJson() =>
      {"title": title, "note": note, "url": url, "version": version};
}

class FYcEntitysRemoteConfigShare {
  final String? title;
  final String? des;
  final String? url;
  final String? logo;

  const FYcEntitysRemoteConfigShare(
      {this.title, this.des, this.url, this.logo});

  factory FYcEntitysRemoteConfigShare.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigShare(
          title: json["title"] ?? "",
          des: json["des"] ?? "",
          url: json["url"] ?? "",
          logo: json["logo"] ?? "");

  Map<String, dynamic> toJson() =>
      {"title": title, "des": des, "url": url, "logo": logo};
}

class FYcEntitysRemoteConfigAd {
  final int? interstitialAdIntervalSec;
  final int? rewardAdIntervalSec;

  const FYcEntitysRemoteConfigAd(
      {this.interstitialAdIntervalSec, this.rewardAdIntervalSec});

  factory FYcEntitysRemoteConfigAd.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigAd(
          interstitialAdIntervalSec: json["interstitialAdIntervalSec"] ?? 0,
          rewardAdIntervalSec: json["rewardAdIntervalSec"] ?? 0);

  Map<String, dynamic> toJson() => {
        "interstitialAdIntervalSec": interstitialAdIntervalSec,
        "rewardAdIntervalSec": rewardAdIntervalSec
      };
}

class FYcEntitysRemoteConfigApp {
  final String? image;
  final String? url;

  const FYcEntitysRemoteConfigApp({this.image, this.url});

  factory FYcEntitysRemoteConfigApp.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigApp(
          image: json["image"] ?? '', url: json["url"] ?? 0);

  Map<String, dynamic> toJson() => {"image": image, "url": url};
}
