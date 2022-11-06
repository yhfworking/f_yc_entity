class FYcEntitysRemoteConfig {
  final FYcEntitysRemoteConfigAd? ad;
  final FYcEntitysRemoteConfigShare? share;
  final FYcEntitysRemoteConfigVersion? version;

  const FYcEntitysRemoteConfig({this.ad, this.share, this.version});

  factory FYcEntitysRemoteConfig.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfig(
          ad: FYcEntitysRemoteConfigAd.fromJson(json["ad"] ?? {}),
          share: FYcEntitysRemoteConfigShare.fromJson(json["share"] ?? {}),
          version:
              FYcEntitysRemoteConfigVersion.fromJson(json["version"] ?? {}));

  Map<String, dynamic> toJson() => {
        "ad": ad!.toJson(),
        "share": share!.toJson(),
        "version": version!.toJson()
      };
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
  final int? interstitialAdIntervalMin;
  final int? rewardAdIntervalMin;

  const FYcEntitysRemoteConfigAd(
      {this.interstitialAdIntervalMin, this.rewardAdIntervalMin});

  factory FYcEntitysRemoteConfigAd.fromJson(Map<String, dynamic> json) =>
      FYcEntitysRemoteConfigAd(
          interstitialAdIntervalMin: json["interstitialAdIntervalMin"] ?? 0,
          rewardAdIntervalMin: json["rewardAdIntervalMin"] ?? 0);

  Map<String, dynamic> toJson() => {
        "interstitialAdIntervalMin": interstitialAdIntervalMin,
        "rewardAdIntervalMin": rewardAdIntervalMin
      };
}
