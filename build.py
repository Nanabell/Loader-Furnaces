import zipfile
import json
import os

exclude = [".gitignore", ".idea", ".vscode", ".git", "build.py"]

with open('info.json') as info:
    version = json.load(info)["version"]
folder = 'Loader-Furnaces_' + version
archive = folder + '.zip'


def zip_files(zipper: zipfile.ZipFile):
    for root, dirs, files in os.walk('Loader-Furnaces'):
        dirs[:] = [d for d in dirs if d not in exclude]
        files[:] = [f for f in files if f not in exclude]

        for file in files:
            print(os.path.join(root, file))
            zipper.write(os.path.join(root, file))


os.chdir('../')
zipper = zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED)
zip_files(zipper)
zipper.close()
