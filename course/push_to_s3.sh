zip -vr helloWorldLambda.zip cache/ -x "*.DS_Store"

zip -g helloWorldLambda.zip lambda.py


aws s3api put-object \
   --bucket cfe-lambda \
   --key helloWorld/helloWorldLambda.zip \
   --body helloWorldLambda.zip