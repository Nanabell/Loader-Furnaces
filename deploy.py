import os
import shutil
import sys

import build


def deploy_to_factorio():
    mod_dir = str(sys.argv[1]) + "/mods"

    print("Searching for old Loader-Furnaces Mod")
    for file in os.listdir(mod_dir):
        if file.startswith("Loader-Furnaces"):
            print("Removing " + file)
            try:
                os.remove(os.path.join(mod_dir, file))
            except PermissionError:
                print("Factorio is still running. Please close Factorio first!")
                return

    print("Building new Loader Furnaces")
    source = build.zip_files()

    print("Finished building new Loader-Furnaces at: " + source + ". Moving to Mod Directory..")
    result = shutil.move(source, mod_dir + '/' + build.get_archive_name('.'))
    print('Moved to ' + result)


if __name__ == "__main__":
    deploy_to_factorio()
