import re
from collections import defaultdict

length = defaultdict(int)
offsets = defaultdict(list)
ordered_tokens = list()

with open("tf_idf", "r") as f:
    output = dict()
    file_data = f.read()
    lst = re.split("id:([a-f0-9]{16}:\scount:\d+\sdocs:\d+\stok:)", file_data)
    lst = lst[1:]
    tuples = zip(lst[0::2], lst[1::2])
    for tpl in tuples:
        key = tpl[0].split(":")[0]
        value = tpl[1]
        output[key] = value[:-1]  # strip added newline

with open("offsets", "r") as f:
    offsets_file_data = f.read()
    matches = re.split("\.\/.*.?tex|([a-f0-9]{16}\s\d+\s+\d+)", offsets_file_data)
    matches = [x for x in matches if str(x).strip() and x is not None]
    for match in matches:
        h, offset, l = re.split("\s+", match)
        length[h] = l
        offsets[h].append(offset)
        ordered_tokens.append(output[h])

ordered_tokens = [x for x in ordered_tokens if x.strip()]
print(ordered_tokens)
