TARGET = harbour-weight-log
# Set version and name to some reasonable default.
# The yaml file will override these.
isEmpty(VERSION) {
   VERSION = "x.y"
}

isEmpty(TARGET) {
    TARGET = "harbour-weight-log"
}

CONFIG += sailfishapp_i18n

SOURCES += src/harbour-weight-log.cpp

OTHER_FILES += qml/harbour-weight-log.qml \
               qml/cover/CoverPage.qml \
               rpm/harbour-weight-log.spec \
               harbour-weight-log.desktop \
               qml/pages/Overview.qml \
               qml/pages/Entry.qml \
               qml/storage.js \
               qml/pages/List.qml
lupdate_only {
    SOURCES += $$OTHER_FILES
}

CODECFORTR = UTF-8
TRANSLATIONS = i18n/it.ts

i18n.files = $$replace(TRANSLATIONS, .ts, .qm)
i18n.path = /usr/share/$$TARGET/i18n

INSTALLS += i18n
APPLICATION_NAME = '\\"$${NAME}\\"'
DEFINES += APPLICATION_NAME=\"$${APPLICATION_NAME}\"
