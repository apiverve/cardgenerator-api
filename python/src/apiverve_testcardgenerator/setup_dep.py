from setuptools import setup, find_packages

setup(
    name='apiverve_testcardgenerator',
    version='1.2.6',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Test Card Generator is a test credit card generator API: it creates card numbers that pass format and Luhn checksum validation, for testing checkout forms and payment UIs across Visa, Mastercard, Amex, Discover, JCB, Diners Club and UnionPay. They aren't real cards: no bank issued them, and they can't be charged or used to buy anything. Each card comes with a security code, expiration date, issuer and masked number, and the gateway option returns Stripe's or Braintree's own documented test cards instead.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/cardgenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
