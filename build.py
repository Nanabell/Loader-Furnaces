from subprocess import call
import json

with open('info.json') as info:
    version = json.load(info)["version"]

archive = "../Loader-Furnaces_" + version + ".zip"
call(["git", "archive", "-o", archive, "HEAD"])