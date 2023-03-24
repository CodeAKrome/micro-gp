name: Python application template

on:
  push:
    branches: [ "master" ]
  pull_request:
    branches: [ "master" ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    
    - name: Set up Python 3.10.6
      uses: actions/setup-python@v4
      with:
        python-version: '3.10.6'
    - name: Install dependencies
      run: make install
      
    - name: Lint with pylint
      run: make lint
      
    - name: Test with pytest
      run: |
      #make test
