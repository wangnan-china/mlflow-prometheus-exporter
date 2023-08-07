from setuptools import setup, find_namespace_packages

setup(name='mlflow-prometheus-exporter',
      version='1.0',
      description='mlflow prometheus exporter',
      packages=find_namespace_packages(),
      package_data={'': []},
      include_package_data=True)
