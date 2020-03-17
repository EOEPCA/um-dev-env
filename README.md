# um-dev-env
Tools and environment definitions for local EOEPCA service development activities, specifically tailored for the User Management environment

## Setup
1. Install git on your system. Make sure you configure the user and email.
2. Add your SSH key to github. Generate a new one if needed. This key will be used inside the VM to commit your work
3. Install VirtualBox on your system
4. Install Vagrant (https://www.vagrantup.com/docs/installation/)
5. Install VSCode (https://code.visualstudio.com/)
   1. Add the following extensions to your VSCode installation (https://code.visualstudio.com/docs/editor/extension-gallery):
        * Vagrant
        * Vagrantfile Support
        * Python
        * Remote - SSH 
        * Diff
        * Markdown All in One
        * AsciiDoc
        * EditorConfig for VS Code
        * Docker
    1. Further customize your VSCode with themes, if you so desire (https://marketplace.visualstudio.com/search?target=VSCode&category=Themes)
6. Setup your dev env: git clone https://github.com/EOEPCA/um-dev-env.git'
5. Copy your SSH key to ./secure/id_rsa (create the folder if needed). Make sure it's named "id_rsa"
6. Go to VSCode's SSH - remote icon on VSCode Add a new ssh target: "ssh vagrant@192.168.33.10"
7. Before executing Vagrant, make sure you set the env variables for your name and email so vagrant can set up git for you. This step is only needed when you first setup the machine for the first time:
  * Using Powershell:
    * $env:VAGRANT_NAME = 'yourname'
    * $env:VAGRANT_EMAIL = 'your-github-email'
  * Using Bash
    * VAGRANT_EMAIL = 'your-github-email'
    * VAGRANT_NAME = 'yourname'

8. Initiate EOEPCA development environment: "vagrant up"

## Usage
To access the environment:
* If you want a SSH connection, use "vagrant ssh".
* If you want a complete connection from vscode, select your configured target from the list in vscode. Password by default should be "vagrant"
Please remember to go to "plugins" and select "install remotely" to install vscode plugins in the vm and further enhance the experience

## Passing files between host & VM
The folder "synced" is linked to the VM, and you can use it to pass information between the VM and the host. (on the VM it's located at /home/vagrant/synced)
