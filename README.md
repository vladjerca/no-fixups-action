# Autosquash-blocker

This action can be used as a blocking status check on pull requests that contain
commits that should have been auto-squashed.

## Usage

```yaml
- name: Check if there are 'amend!', 'fixup!', or 'squash!' commits
  uses: matijs/autosquash-blocker-action@v1.0.0
```

This action will only run on pull requests and will fail when used on for
example pushes. There are no inputs and no outputs.

It is not necessary to use
[actions/checkout](https://github.com/actions/checkout) first. This action
already takes care of that and is meant to be used on its own.

## License

The scripts and documentation in this project are released under the [MIT
License](LICENSE.md)
