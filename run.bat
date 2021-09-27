rmdir /s/q build
rmdir /s/q dist
rmdir /s/q happyreport.egg-info
pip uninstall happyreport
python setup.py sdist bdist_wheel
python -m twine upload  dist/*