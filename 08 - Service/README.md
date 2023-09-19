## Service
This _Basic Systemd Service_ use a combination of systemd and python to set a startup service with a notifications system.

![Service in Action!](./notification.gif)

### Need to know
- The service works only on Linux based systems.
- Run, into the `src` folder, `sudo chmod +x install.sh` to set execute permissions to the installation script.
- Finally, run `./install.sh` to move the systemd service to the common services folder and move the python script to the common binarys folder.
- This service start after every OS restart, enjoy :).