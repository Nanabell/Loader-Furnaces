import json
import os
import zipfile

excludes = [".gitignore", ".idea", ".vscode", ".git", "build.py", "deploy.py"]


def get_archive_name(basedir: str):
    with open(basedir + '/info.json') as info:
        version = json.load(info)['version']
    return 'Loader-Furnaces_' + version + '.zip'


def get_archive_path(basedir: str):
    return os.path.abspath(get_archive_name(basedir))


def zip_files():
    os.chdir("../")

    zipper = zipfile.ZipFile(get_archive_name('loader-Furnaces'), 'w', zipfile.ZIP_DEFLATED)
    output_file = os.path.abspath(zipper.filename)

    for root, dirs, files in os.walk('Loader-Furnaces'):
        dirs[:] = [d for d in dirs if d not in excludes]
        files[:] = [f for f in files if f not in excludes]

        for file in files:
            print('Zipping: ' + os.path.join(root, file))
            zipper.write(os.path.join(root, file))

    zipper.close()
    os.chdir("Loader-Furnaces")
    return output_file


print(zip_files())
