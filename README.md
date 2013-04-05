# fs-exists

Wraps fs.exists so callback is called with (err, result) instead of just (result).
Since it's just wrapping fs.exists, the `err` argument will always be `null`.

## Usage

```javascript
fsExists = require('fs-exists')
fsExists(path, function(err, result) {
  if (err) throw err; // err will always be null
  if(result)
    console.log "the entry exists"
  else
    console.log "the entry does not exist"
})
```

## License

fs-exists is released under the [MIT License](http://opensource.org/licenses/MIT).  
Copyright (c) 2013 Meryn Stol  