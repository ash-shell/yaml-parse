# Ash-Yaml-Parse

Ash-Yaml-Parse is an [Ash](https://github.com/BrandonRomano/ash) module that offers YAML parsing in Bash.

## Getting started

### Ash Users

TBD

### Non Ash Users

Add in `. {path_to_yaml_parse.sh}/yaml_parse.sh` to the top of your script and you should be good to go.

## Example Usage

Our YAML file:

```YAML
name: "Brandon Romano"
```

Here's some example usage:

```sh
# Importing
. lib/yaml_parse.sh

eval $(YamlParse__parse "./path/to/file.yaml" "Config_")
echo "$Config_name"
```

Outputs:

```
Brandon Romano
```

## Credits

All of the heavy lifting was done by [Stefan Farestam](https://github.com/sfarestam) in response to this [StackOverflow Post](http://stackoverflow.com/questions/5014632/how-can-i-parse-a-yaml-file-from-a-linux-shell-script).  This is simply a Ash wrapper.

## License

[MIT](license.txt)
