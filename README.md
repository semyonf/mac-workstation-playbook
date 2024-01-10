### On the managed nodes
- Open "System Settings" — "Sharing"
  - enable "Remote Login" (or run `sudo systemsetup -setremotelogin on`)
  - notice "Local hostname" at the bottom, you can use it if the control node is on the same network

![System Settings — Sharing window](https://github.com/semyonf/mac-workstation-playbook/blob/master/.readme/sharing.png)

### On the control node
- Install Apple's Command Line Tools (`xcode-select --install`)
- [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html), duh
- `ssh-copy-id` to the managed nodes (or use password authentication)
- Populate inventory file
- Run `ansible-galaxy install -r requirements.yml`
- Run `ansible-playbook --ask-become-pass main.yml`

> Don't forget to disable "Remote Login" on the managed nodes (unless you want it)
