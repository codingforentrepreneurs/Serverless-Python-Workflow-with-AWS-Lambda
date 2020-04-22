# Serverless Python Workflow with AWS Lambda
A tutorial to setup and deploy a simple Serverless Python workflow with REST API endpoints in AWS Lambda.

#### Requirements
- Working Knowledge of Python or [Learn Here](https://cfe.sh/projects/30-days-python-38)
- [AWS Account](https://aws.amazon.com) with the appropriate permissions for AWS Lambda, API Gateway, AWS S3, and IAM. If it's your account, you already have this.


### Getting started

#### 1. Download Project
```
mkdir serverless-workflow
cd serverless-worlfow 
git clone https://github.com/codingforentrepreneurs/Serverless-Python-Workflow-with-AWS-Lambda .
```

#### 2. Copy `base` files to project root
```
cp base/* .
```


#### 3. Remove Unnecessary files
```
rm -rf .git
rm -rf base
```


#### 4. Virtual Environment Setup

##### Pipenv
```
pipenv install -r requirements.txt --python 3.8
```

##### Virtualenv
```
virtualenv -p python3.8 .
source bin/activate
pip install -r requirements.txt
```
> If using `windows` with `virtualenv` just run `.\Scripts\activate`


#### 5. Ready
You now have a baseline Lambda function working locally. Check out the code in the [course directory](./course) or learn how to implement this code on [cfe](https://www.codingforentrepreneurs.com/projects/serverless-python-aws-lambda-api-gateway).
