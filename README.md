# um-dev-env
Tools and environment definitions for local EOEPCA service development activities, specifically tailored for the User Management environment

## Setup
1. (Optional but recommended, to be able to pull changes from this repository) Install git on your system. Make sure you configure the user and email.
2. (Mandatory) Add your SSH key to github [(instructions)](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account). This key will be used inside the VM to commit your work
3. (Mandatory) Install VirtualBox on your system
4. (Mandatory) Install Vagrant (https://www.vagrantup.com/docs/installation/)
5. (Mandatory) Install VSCode (https://code.visualstudio.com/)
   1. (Mandatory) Add the following extensions to your VSCode installation (https://code.visualstudio.com/docs/editor/extension-gallery):
        * Vagrant
        * Vagrantfile Support
        * Python
        * Remote - SSH 
        * Diff
        * Markdown All in One
        * AsciiDoc
        * EditorConfig for VS Code
        * Docker
        * Terraform
    1.(Optional) Further customize your VSCode with themes, if you so desire (https://marketplace.visualstudio.com/search?target=VSCode&category=Themes)
6. (Mandatory) Setup your dev env: git clone https://github.com/EOEPCA/um-dev-env.git'
7. (Mandatory) Copy your SSH key to secure/id_rsa. **Make sure it's named "id_rsa"**
8. (Mandatory) Go to VSCode's SSH - remote icon on VSCode Add a new ssh target: "ssh vagrant@192.168.33.10"
9. (Mandatory) Before executing Vagrant, make sure you set the env variables for your name and email so vagrant can set up git for you. Please remember that VSCode has a handy integrated terminal you can use for this and during development. This step is only needed when you first setup the machine for the first time:
  * Using Powershell:
    * $env:VAGRANT_NAME = 'yourname'
    * $env:VAGRANT_EMAIL = 'your-github-email'
  * Using Bash
    * VAGRANT_EMAIL = 'your-github-email'
    * VAGRANT_NAME = 'yourname'

8. Initiate EOEPCA development environment: "vagrant up"

## Usage
To access the environment:
* If you want a SSH connection, use "vagrant ssh" (either on VSCode or on your prefered terminal, from this repo's folder).
* If you want a complete connection from vscode, select your configured target from the list in vscode. Password by default should be "vagrant"

Once you are inside, the first time you will need to "install remotely" the extensions. For that:
* Get into the SSH via VSCode
* Go to "Extensions" in vscode (located in the side panel)
* Some extensions will ask you to "install remotely". Cllick on them one by one, then (once all of them show "reload needed"), click on any of them to reload vscode

## Passing files between host & VM
The folder "synced" is linked to the VM, and you can use it to pass information between the VM and the host. (on the VM it's located at /home/vagrant/synced)
