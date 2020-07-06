#!/usr/bin/env python3

from pathlib import Path

# Yksinkertainen ohjelma sanamäärien laskemiseen

# Laskee sanamäärät vain alikansioiden .md tiedostoista, eli jättää esim. koodiesimerkit pois.
# Tulee huomata myös, että 'sanoiksi' hyväksytään kaikki merkkijonot, joissa välilyönti välissä.
# Täten esim. '--' on sana, joten tulokset suuntaa antavia.

lens = {}

dirs = [x for x in Path('.').iterdir() if x.is_dir() and x.name != '.git']
for x in dirs:
  files = [x for x in Path(x).iterdir() if x.match('*.md')]
  print('--------------------------------------------------------------------\n')
  print(f'Directory: {x.name}, files: {len(files)}')
  for f in files:
    with open(f) as cf:
      # rivinvaihdot välilyönneiksi, erotetaan toisistaan ja poistetaan tyhjät
      data = [x for x in cf.read().replace('\n', ' ').split(' ') if x]
      lens[f.name] = len(data) 
      print(f'  - {f}, word length: {len(data)}')
  print('\n')

print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~OVERVIEW~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~')
print(f'Total words: {sum(lens.values())}')
