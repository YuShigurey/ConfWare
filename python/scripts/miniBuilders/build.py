# version's time trailing
import datetime

with open("../pyproject.toml", 'r') as f:
    lines = f.readlines()
    question = "AIO SDK Version is ? (Major.Minor.Patch.PreRelease) "
    time_trailing = datetime.datetime.now().strftime(".%m%d.%H%M")
    lines = [
        line
        if not line.startswith("version = ")
        else f"version = '{input(question) + time_trailing}'\n"
        for line in lines
    ]

with open("../pyproject.toml", 'w') as f:
    f.writelines(lines)

# TODO: run tox test

# TODO: copy document

# poetry build
# import subprocess
# import sys
#
# subprocess.Popen(
#     args=[sys.executable, "-m", "poetry", "build"],
#     cwd="../",
# )
