# dotfiles

**dotfiles** used by [Chikurin1014](https://github.com/Chikurin1014)

## `minimal` branch

### Environment requirements

- Use **Git**

### Installatioin

Clone `minimal` branch of this repository to anywhere you want.

```shell
git clone git@github.com:Chikurin1014/dotfiles.git <path-to-dotfiles> -b minimal
```

Initialize & update the submodules.

```shell
git submodule init && git submodule update
```

Set executability of `deploy.sh`.

```shell
chmod +x deploy.sh
```

### Packages you need to install manually

- [WezTerm](https://wezfurlong.org/wezterm/installation.html)
- [FirgeNerd Font](https://github.com/yuru7/Firge/releases)

### Usage

Just run:

```shell
./deploy.sh
```

## `main` branch

Look out for `README.md` in [`minimal`](https://github.com/Chikurin1014/dotfiles/tree/main) branch.
