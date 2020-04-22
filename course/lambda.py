import json
import pandas as pd

from scraper import scrape_event

def scrape_handler():
    scrape_event(year=2020)
    data = {
        "scaping": True
    }
    return {
        "statusCode": 200,
        "body": json.dumps(data)
    }


def handler(event, context):
    data = {
        "message": "Local deployment works!"
    }
    random_data = [{"hello": 123, "world": "this is cool"}]
    df = pd.DataFrame(random_data)
    columns = list(df.columns)
    data['columns'] = columns
    http_data = {}
    try:
        http_data = event['requestContext']['http']
    except:
        pass
    path = http_data.get("path")
    method = http_data.get("method")
    source_id = http_data.get("sourceIp")
    user_agent = http_data.get('userAgent')
    data['path'] = path
    if path != None:
        if "/scrape" in path:
            return scrape_handler()
    return {
        "statusCode": 200,
        "body": json.dumps(data)
    }