pip install --target ./package pytz requests beautifulsoup4
cd package

# download pandas wheel
curl -O https://files.pythonhosted.org/packages/f5/10/40688389f5e234bde06aa84e6f3ccf5beea6269f57e2bef67866d3b43268/pandas-1.0.3-cp38-cp38-manylinux1_x86_64.whl

# unzip pands
unzip pandas-1.0.3-cp38-cp38-manylinux1_x86_64.whl

curl -O https://files.pythonhosted.org/packages/ca/c6/cca531518aab1c161233c61e090728024aa647f2ff9c3b91d3f4e68e7e0e/numpy-1.18.3-cp38-cp38-manylinux1_x86_64.whl

unzip numpy-1.18.3-cp38-cp38-manylinux1_x86_64.whl

rm -r *.whl *.dist-info __pycache__


zip -r9 ${OLDPWD}/helloWorldLambda.zip .
cd ${OLDPWD}
rm -rf package