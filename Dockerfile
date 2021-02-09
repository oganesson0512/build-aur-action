FROM archlinux:latest
RUN pacman-db-upgrade && pacman -Syu base-devel git --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
