from setuptools import setup, find_packages

setup(
    name='apiverve_testcardgenerator',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Test Card Generator creates card numbers that pass format and checksum validation, for testing checkout forms and payment UIs across major networks. They aren't real cards: no bank issued them, and they can't be charged or used to buy anything. Specify a brand to receive card numbers, security codes, expiration dates, issuers, and masked strings.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/cardgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
