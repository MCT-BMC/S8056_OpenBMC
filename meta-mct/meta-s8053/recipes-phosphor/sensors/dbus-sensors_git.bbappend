FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-psu-sensor-supported.patch \
            file://0002-Add-event-sensor-supported.patch \
            file://0003-Add-hwmon-temperature-sensor-supported.patch \
            file://0004-Add-VR-sensor-supported.patch \
            file://0005-Add-ADC-sensor-supported.patch \
            file://0006-Add-fan-presence-sensor-support.patch \
            file://0007-Change-Tach-timer-dealine-to-steady.patch \
            file://0008-Add-DIMM-temperature-sensor-supported.patch \
            file://0009-Add-OCP-NIC-temperature-sensor-support-via-MCTP.patch \
            file://0010-Add-sol-pattern-matching-sensor-supported.patch \
            file://0011-Add-virtual-sensor-supported.patch \
            file://0012-Add-I2C-NVMe-sensor-supported.patch \
            file://0013-Change-the-using-timer-from-deadline_timer-to-steady.patch \
            file://0014-Add-chassis-association-for-all-of-the-sensors.patch \
            file://0017-Add-hwmon-power-sensor-supported.patch \
            file://0019-Remove-add-fan-presence-patch.patch \
            "

SRC_URI += "file://src/EventSensor.cpp;subdir=git/ \
            file://include/EventSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.eventsensor.service;subdir=git/ \
            file://src/VRTempSensor.cpp;subdir=git/ \
            file://include/VRTempSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.vrtempsensor.service;subdir=git/ \
            file://src/FanPresenceSensor.cpp;subdir=git/ \
            file://include/FanPresenceSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.fanpresencesensor.service;subdir=git/ \
            file://src/DIMMTempSensor.cpp;subdir=git/ \
            file://include/DIMMTempSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.dimmtempsensor.service;subdir=git/ \
            file://src/MUXUtils.cpp;subdir=git/ \
            file://include/MUXUtils.hpp;subdir=git/ \
            file://src/NICSensor.cpp;subdir=git/ \
            file://src/NICSensorMain.cpp;subdir=git/ \
            file://include/NICSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.nicsensor.service;subdir=git/ \
            file://src/PatternSensor.cpp;subdir=git/ \
            file://src/PatternSensorMain.cpp;subdir=git/ \
            file://include/PatternSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.solpatternsensor.service;subdir=git/ \
            file://src/I2cNVMeSensor.cpp;subdir=git/ \
            file://include/I2cNVMeSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.i2cnvmesensor.service;subdir=git/ \
            file://src/VirtualSensor.cpp;subdir=git/ \
            file://include/VirtualSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.virtualsensor.service;subdir=git/ \
            file://src/HwmonPowerMain.cpp;subdir=git/ \
            file://src/HwmonPowerSensor.cpp;subdir=git/ \
            file://include/HwmonPowerSensor.hpp;subdir=git/ \
            file://service_files/xyz.openbmc_project.hwmonpowersensor.service;subdir=git/ \
            "

DEPENDS += "obmc-libi2c \
           "

RDEPENDS:${PN} += "obmc-libi2c \
                  "
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.eventsensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.vrtempsensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.dimmtempsensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.nicsensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.solpatternsensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.virtualsensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.i2cnvmesensor.service"
SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.hwmonpowersensor.service"