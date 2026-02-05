# About
This project is a custom distro based on the ublue-template and using a fedora base. This ensures high stability with low maintenance. I don't actually recommend you use this, this is something I am making for fun and because it's interesting to figure out some of the inner workings of bootc.
# Intallation
Currently the only method to install this is to move to an rpm-ostree based atomic system (like ublue, fedora) and running:
`
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/josinose/josinos:latest
`
to rebase the image from the current image to the custom image hosted here.
