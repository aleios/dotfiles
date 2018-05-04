let g:projectionist_heuristics = {
      \'*': {
      \     '*.c': {
      \       'alternate': '{}.h',
      \       'type': 'source'
      \     },
      \     '*.h': {
      \       'alternate': [ '{}.c', '{}.cpp' ],
      \       'type': 'header'
      \     },
      \     '*.hpp': {
      \       'alternate': '{}.cpp',
      \       'type': 'header'
      \     },
      \     '*.cpp': {
      \       'alternate': [ '{}.hpp', '{}.h' ],
      \       'type': 'source'
      \     }
      \ }
\}
