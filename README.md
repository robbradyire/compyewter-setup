# Requirements (development)

- [Vagrant](https://www.vagrantup.com/)
- [ShellCheck](https://www.shellcheck.net/)

# Run instructions (development)

- Clone repo and `cd` in
- Run `git config core.hooksPath .githooks`

First time running:

```bash
$ vagrant up
$ vagrant ssh
vagrant@vagrant$ sudo /vagrant-src/kickstart.sh
```

Once VM is running:

```bash
$ vagrant destroy -f; vagrant up; vagrant ssh
vagrant@vagrant$ sudo /vagrant-src/kickstart.sh
```

# Run instructions (on a fresh install)

TODO

- wget script and run it :shrug:
