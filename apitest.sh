#! /bin/sh

## access token
curl -u vigou3:f826209ee6cf85317e18f31c3627c459986adf6d

## create release
curl --data '{"tag_name": "v0.3", \
              "name": "Scripted release", \
              "body": "First release made through a script", \
	      "draft": false, \
	      "prerelease": false}' \
     https://api.github.com/repos/vigou3/test/releases?access_token=f826209ee6cf85317e18f31c3627c459986adf6d


## id of latest release
curl -s "https://api.github.com/repos/vigou3/test/releases/latest" | grep "^  \"id\""  | cut -d " " -f 4

## url to upload release assets to
curl -s "https://api.github.com/repos/vigou3/test/releases/latest" | grep "^  \"upload_url\""  | | cut -d \" -f 4 | cut -d { -f 1

## upload file
curl --header 'Content-Type: application/zip'  -H 'Authorization: token f826209ee6cf85317e18f31c3627c459986adf6d'   --upload-file toto.zip  "https://uploads.github.com/repos/vigou3/test/releases/5052661/assets?&name=foo.zip"      

## extract release info from NEWS file
awk '/<VERSION>/{flag=1; next} /^Version/{flag=0} flag' NEWS | tail +3 | tail -r | tail +3 | tail -r
