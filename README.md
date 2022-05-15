# M3O-JS Publisher

This action do the following necessaty steps in order to publish m3o-js:

- format the generated JS/TS code.
- update the package.json file (update version and 'files' field)
- create .npmrc file
- install and build the project
- publish m3o-js to npm

## Outputs

## `success`

The result of this Action

## `version`

The latest version that has been published

## Example usage

```yaml
jobs:
  generate:

      - name: Publish m3o-js clients
        uses: m3o/m3o-publish-ts-action@main
        env:
          NPM_TOKEN: ${{ secrets.NPM_TOKEN }}
```
