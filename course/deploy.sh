/Users/cfe/Dev/serverless-app/prepare.sh

zip -vr helloWorldLambda.zip cache/ -x "*.DS_Store"

zip -g helloWorldLambda.zip scraper.py
zip -g helloWorldLambda.zip lambda.py

aws s3api put-object \
   --bucket cfe-lambda \
   --key helloWorld/helloWorldLambda.zip \
   --body helloWorldLambda.zip

aws lambda update-function-code \
    --function-name helloWorldLambda \
    --s3-bucket cfe-lambda \
    --s3-key helloWorld/helloWorldLambda.zip \
    --publish \
    --region us-west-1

rm helloWorldLambda.zip