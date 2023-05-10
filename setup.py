from setuptools import setup, find_packages

with open("requirements.txt", "r", encoding="UTF-8") as f:
    requirements = [line.strip() for line in f.readlines()]

setup(
    packages=find_packages(exclude="tests"),
    setup_requires=["wheel"],
    install_requires=requirements,
)
