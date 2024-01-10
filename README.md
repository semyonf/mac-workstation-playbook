**_This Ansible playbook is neither flexible nor universal, it is a rigid and opinionated config that I myself use to provision my Mac_**

---

## On the managed nodes (if there are any)
- Sign in to iCloud & App Store
- Open "System Settings" — "Sharing"
  - enable "Remote Login" (or run `sudo systemsetup -setremotelogin on`)
  - notice "Local hostname" at the bottom, you can use it if the control node is on the same network

<p align="center">
  <kbd>
  <img alt="System Settings — Sharing window" src="https://github.com/semyonf/mac-workstation-playbook/blob/master/.readme/sharing.png" height="350">
</kbd>
</p>

> **Warning**  
> Don't forget to disable "Remote Login" on the managed nodes when you're done (unless you want it)

## On the control node
- Sign in to iCloud & App Store
- Install Apple's Command Line Tools (`xcode-select --install`)
- [Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html), duh
- `ssh-copy-id` to the managed nodes (or use password authentication)
- Populate the [inventory](https://docs.ansible.com/ansible/latest/inventory_guide/intro_inventory.html) file
- Run `ansible-galaxy install -r requirements.yml`
- Run `ansible-playbook --ask-become-pass main.yml`
