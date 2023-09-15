# BitwardenDockerBackup

A Docker image for backing up personnal Bitwarden vault.

## Init

```bash
$ git clone https://github.com/MartDel/BitwardenDockerBackup.git
$ cd BitwardenDockerBackup
$ touch .env
```

Put this code in the `.env` file :

```conf
# Bitwarden API keys
BW_CLIENTID=""
BW_CLIENTSECRET=""

# Bitwarden master password
BW_PASSWORD=""

# Encryption password, use for re-importing data
BW_ENCRYPT_PASSWORD=""
```

## Use

```bash
$ docker compose build
$ docker compose up
```