#! /usr/bin/python

import requests

def print_latest_bvsdk():
    r = requests.get("http://search.maven.org/solrsearch/select?q=g:%22com.bazaarvoice.bvandroidsdk%22+AND+a:%22common%22&rows=20&wt=json")
    json_resp = r.json()
    latestVersion = json_resp.get("response").get("docs")[0].get("latestVersion")
    print latestVersion + " -> http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22com.bazaarvoice.bvandroidsdk%22"

try:
    print_latest_bvsdk()
    print "Unsynced Maven: https://repo1.maven.org/maven2/com/bazaarvoice/bvandroidsdk/common/"
    print "Internal Maven Snapshots (Requires LDAP): https://repo.bazaarvoice.com/nexus/content/groups/bazaarvoice/com/bazaarvoice/bvandroidsdk/common/"
    print "OSS Sonatype Staging (Requires BV Credentials): oss.sonatype.org/#stagingRepositories"
    print "Public Docs: https://bazaarvoice.github.io/bv-android-sdk/"
    print "Private Docs: http://utilities.qa.us-east-1.nexus.bazaarvoice.com/github-pages-android-sdk/"
    print "Public Repo: https://github.com/bazaarvoice/bv-android-sdk/"
    print "Private Repo: https://github.com/bazaarvoice/bv-android-sdk-dev"
except Exception as e:
    print "Failed to fetch/parse latest version"
    print "http://search.maven.org/#search%7cga%7c1%7cg:%22com.bazaarvoice.bvandroidsdk%22%20AND%20a:%22common%22"
