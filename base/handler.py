
import json

# from scrape import run

def lambda_handler(event, context):
    """
    This is roughly the exact same handler function that AWS provides.
    """
    response = {
        'statusCode': 200,
        'body': json.dumps("Hello world")
    }
    return response