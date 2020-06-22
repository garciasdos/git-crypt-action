# Simplest git-crypt GitHub Action via Alpine

## Usage
This workflow is based on [@ArnaudRinquin action](https://github.com/sliteteam/github-action-git-crypt-unlock) but with 
minimal dependencies to ensure faster deployment
### Example Workflow file

```
jobs:
  deploy:
    name: Test git-crypt-unlock
    runs-on: ubuntu-latest
    steps:
      - name: Unlock secrets
        uses: garciasdos/git-crypt-action@1.0.0
        env:
          GIT_CRYPT_KEY: ${{ secrets.GIT_CRYPT_KEY }}
```

### Secrets

- `GIT_CRYPT_KEY` **Required** Base64 encoded git-crypt key file.
  - Get it from an unlocked git-crypt env with:
    ```sh
    git-crypt export-key ./tmp-key && cat ./tmp-key | base64 | pbcopy && rm ./tmp-key
    ```
