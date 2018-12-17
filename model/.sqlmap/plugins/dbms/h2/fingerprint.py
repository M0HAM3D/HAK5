#!/usr/bin/env python

"""
Copyright (c) 2006-2018 sqlmap developers (http://sqlmap.org/)
See the file 'LICENSE' for copying permission
"""

from lib.core.common import Backend
from lib.core.common import Format
from lib.core.data import conf
from lib.core.data import kb
from lib.core.data import logger
from lib.core.enums import DBMS
from lib.core.session import setDbms
from lib.core.settings import H2_ALIASES
from lib.request import inject
from plugins.generic.fingerprint import Fingerprint as GenericFingerprint

class Fingerprint(GenericFingerprint):
    def __init__(self):
        GenericFingerprint.__init__(self, DBMS.H2)

    def getFingerprint(self):
        value = ""
        wsOsFp = Format.getOs("web server", kb.headersFp)

        if wsOsFp:
            value += "%s\n" % wsOsFp

        if kb.data.banner:
            dbmsOsFp = Format.getOs("back-end DBMS", kb.bannerFp)

            if dbmsOsFp:
                value += "%s\n" % dbmsOsFp

        value += "back-end DBMS: "

        if not conf.extensiveFp:
            value += DBMS.H2
            return value

        actVer = Format.getDbms()
        blank = " " * 15
        value += "active fingerprint: %s" % actVer

        if kb.bannerFp:
            banVer = kb.bannerFp.get("dbmsVersion")
            banVer = Format.getDbms([banVer])
            value += "\n%sbanner parsing fingerprint: %s" % (blank, banVer)

        htmlErrorFp = Format.getErrorParsedDBMSes()

        if htmlErrorFp:
            value += "\n%shtml error message fingerprint: %s" % (blank, htmlErrorFp)

        return value

    def checkDbms(self):
        if not conf.extensiveFp and Backend.isDbmsWithin(H2_ALIASES):
            setDbms("%s %s" % (DBMS.H2, Backend.getVersion()))

            self.getBanner()

            return True

        infoMsg = "testing %s" % DBMS.H2
        logger.info(infoMsg)

        result = inject.checkBooleanExpression("ZERO() IS 0")

        if result:
            infoMsg = "confirming %s" % DBMS.H2
            logger.info(infoMsg)

            result = inject.checkBooleanExpression("ROUNDMAGIC(PI())>=3")

            if not result:
                warnMsg = "the back-end DBMS is not %s" % DBMS.H2
                logger.warn(warnMsg)

                return False
            else:
                setDbms(DBMS.H2)

                self.getBanner()

                return True
        else:
            warnMsg = "the back-end DBMS is not %s" % DBMS.H2
            logger.warn(warnMsg)

            return False

    def getHostname(self):
        warnMsg = "on H2 it is not possible to enumerate the hostname"
        logger.warn(warnMsg)
