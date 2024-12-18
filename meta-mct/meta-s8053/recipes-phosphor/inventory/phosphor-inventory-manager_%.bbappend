FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PACKAGECONFIG:append = " associations"
SRC_URI:append = " file://associations.json"
DEPENDS:append = " inventory-cleanup"

do_install:append() {
    install -d ${D}${base_datadir}
    install -m 0755 ${WORKDIR}/associations.json ${D}${base_datadir}/associations.json
}
