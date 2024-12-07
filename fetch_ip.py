import requests

def get_external_ip():
    try:
        # Request external IP from a service
        response = requests.get("https://api.ipify.org/?format=json")
        if response.status_code == 200:
            return response.json()['ip']
        else:
            print("Failed to get external IP. Status code:", response.status_code)
            return None
    except Exception as e:
        print("An error occurred:", e)
        return None

external_ip= get_external_ip()
if get_external_ip:
    print("external IP:", external_ip)
else:
    print("Failed to get external IP")