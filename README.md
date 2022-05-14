# M3O-JS Publisher

This action do the following necessaty steps in order to publish m3o-js:

- format the generated JS/TS code.
- update the package.json file (update version and 'files' field)
- create .npmrc file
- install and build the project
- publish m3o-js to npm

## Inputs

## `npm_token`

**Required** NPM Token.

## `m3o_js_local_path`

**Required** The local path of m3o-js repo in the current workflow.

<!-- ## Outputs

## `success`

The result of this Action -->

## Example usage

```yaml
jobs:
  generate:

      - name: Publish m3o-js clients
        uses: m3o/m3o-publish-ts-action@main
        with:
          npm_token: ${{ secrets.NPM_TOKEN }}
          m3o_js_local_path: m3o-js
```

