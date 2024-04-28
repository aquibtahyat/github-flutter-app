import 'dart:convert';

import 'package:github_flutter_app/features/repo_list/domain/entities/sub_entities.dart';

class LicenseModel extends LicenseEntity {
  LicenseModel({
    String? key,
    String? name,
    String? spdxId,
    String? url,
    String? nodeId,
  }) : super(
          key: key,
          name: name,
          spdxId: spdxId,
          url: url,
          nodeId: nodeId,
        );

  factory LicenseModel.fromRawJson(String str) =>
      LicenseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LicenseModel.fromJson(Map<String, dynamic> json) => LicenseModel(
        key: json["key"],
        name: json["name"],
        spdxId: json["spdx_id"],
        url: json["url"],
        nodeId: json["node_id"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "spdx_id": spdxId,
        "url": url,
        "node_id": nodeId,
      };
}

class OwnerModel extends OwnerEntity {
  OwnerModel({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    String? type,
    bool? siteAdmin,
  }) : super(
          login: login,
          id: id,
          nodeId: nodeId,
          avatarUrl: avatarUrl,
          gravatarId: gravatarId,
          url: url,
          htmlUrl: htmlUrl,
          followersUrl: followersUrl,
          followingUrl: followingUrl,
          gistsUrl: gistsUrl,
          starredUrl: starredUrl,
          subscriptionsUrl: subscriptionsUrl,
          organizationsUrl: organizationsUrl,
          reposUrl: reposUrl,
          eventsUrl: eventsUrl,
          receivedEventsUrl: receivedEventsUrl,
          type: type,
          siteAdmin: siteAdmin,
        );

  factory OwnerModel.fromRawJson(String str) =>
      OwnerModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OwnerModel.fromJson(Map<String, dynamic> json) => OwnerModel(
        login: json["login"],
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: json["gists_url"],
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: json["events_url"],
        receivedEventsUrl: json["received_events_url"],
        type: json["type"],
        siteAdmin: json["site_admin"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": type,
        "site_admin": siteAdmin,
      };
}
