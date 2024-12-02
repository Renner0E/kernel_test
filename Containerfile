FROM quay.io/fedora/fedora-kinoite:latest

# Remove stock fedora kernel
RUN dnf5 remove -y kernel-tools-libs kernel-tools kernel-modules-core kernel-core kernel-modules kernel-modules-extra && dnf clean all

RUN dnf5 copr enable -y @kernel-vanilla/mainline

RUN dnf5 upgrade -y && dnf clean all

RUN dnf5 install -y kernel && dnf clean all
