from setuptools import setup, find_packages  # type: ignore
import datetime


setup(
    # packages=find_packages(),
    # Major.Minor.Build.Timestamp,
    version="0.1.0."
    + datetime.datetime.now().strftime("%m%d.%H%M"),
)
