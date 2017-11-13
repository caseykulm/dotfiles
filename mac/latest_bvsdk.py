#! /usr/bin/python
# coding=utf-8

import requests

def print_latest_bvsdk():
    r = requests.get("https://search.maven.org/solrsearch/select?q=g:%22com.bazaarvoice.bvandroidsdk%22+AND+a:%22common%22&rows=20&wt=json")
    json_resp = r.json()
    latestVersion = json_resp.get("response").get("docs")[0].get("latestVersion")
    print "🔥  The latest version that people can see in the mavenCentral browser and Github badges..."
    print latestVersion + " -> https://search.maven.org/#search%7Cga%7C1%7Cg%3A%22com.bazaarvoice.bvandroidsdk%22\n"

print "❓  Private: Confluence Release Instructions"
print "https://bits.bazaarvoice.com/confluence/display/DEV/Mobile+Github+Release+Process\n"

try:
    print_latest_bvsdk()
except Exception as e:
    print "Failed to fetch/parse latest version"
    print "https://search.maven.org/#search%7cga%7c1%7cg:%22com.bazaarvoice.bvandroidsdk%22%20AND%20a:%22common%22"

print "👀  Public: latest version that people can actually pull down from mavenCentral using maven/gradle/etc."
print "https://repo1.maven.org/maven2/com/bazaarvoice/bvandroidsdk/common/\n"

print "🚢  Public: mavenCentral staging console where you can promote a release (Requires BV Open Source credentials)"
print "oss.sonatype.org/#stagingRepositories\n"

print "📸  Private: Bazaarvoice Maven Snapshots (Requires LDAP credentials)"
print "https://repo.bazaarvoice.com/nexus/content/groups/bazaarvoice/com/bazaarvoice/bvandroidsdk/common/\n"

print "📸  Public: mavenCentral snapshots"
print "https://oss.sonatype.org/content/repositories/snapshots/com/bazaarvoice/bvandroidsdk/common/\n"

print "📄  Public: Github Pages Docs"
print "https://bazaarvoice.github.io/bv-android-sdk/\n"

print "📄  Private: AWS QA Docs"
print "http://utilities.qa.us-east-1.nexus.bazaarvoice.com/github-pages-android-sdk/\n"

print "🖥  Public: Github Repo"
print "https://github.com/bazaarvoice/bv-android-sdk/\n"

print "🖥  Private: Github Repo"
print "https://github.com/bazaarvoice/bv-android-sdk-dev\n"
