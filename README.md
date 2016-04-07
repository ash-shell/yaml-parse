# Yaml-Parse

Yaml-Parse is an [Ash](https://github.com/ash-shell/ash) module that offers YAML parsing in Bash.

## Getting started

Yaml-Parse is part of the Ash core, so you can just start using it in your Ash modules.

## Example Usage

Our YAML file:

```YAML
name: "Brandon Romano"
location: "Brooklyn, NYC"
```

Here's some example usage:

```sh
eval $(YamlParse__parse "./path/to/file.yaml" "Config_")
echo "$Config_name"
echo "$Config_location"
```

Outputs:

```
Brandon Romano
Brooklyn, NYC
```

## Running Tests

Tests are written using the [official test](https://github.com/ash-shell/test) module

You can run tests by running this command, after Yaml-Parse is installed:

```sh
ash test yamlparse
```

## Credits

All of the heavy lifting was done by [Stefan Farestam](https://github.com/sfarestam) in response to this [StackOverflow Post](http://stackoverflow.com/questions/5014632/how-can-i-parse-a-yaml-file-from-a-linux-shell-script).  This is simply an Ash wrapper.

## License

[MIT](LICENSE.md)
