import json
import re


class MyEncoder(json.JSONEncoder):

    def encode(self, o):
        return re.sub(r'\s+([\d\]]+)', r'\g<1>', super(MyEncoder, self).encode(o))

